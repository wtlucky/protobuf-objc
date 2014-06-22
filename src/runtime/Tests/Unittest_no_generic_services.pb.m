// Generated by the protocol buffer compiler.  DO NOT EDIT!

#import "Unittest_no_generic_services.pb.h"
// @@protoc_insertion_point(imports)

@implementation UnittestNoGenericServicesRoot
static id<PBExtensionField> UnittestNoGenericServicesRoot_testExtension = nil;
static PBExtensionRegistry* extensionRegistry = nil;
+ (PBExtensionRegistry*) extensionRegistry {
  return extensionRegistry;
}

+ (void) initialize {
  if (self == [UnittestNoGenericServicesRoot class]) {
    UnittestNoGenericServicesRoot_testExtension =
      [PBConcreteExtensionField extensionWithType:PBExtensionTypeInt32
                                     extendedClass:[TestMessage class]
                                       fieldNumber:1000
                                      defaultValue:[NSNumber numberWithInteger:0]
                               messageOrGroupClass:[NSNumber class]
                                        isRepeated:NO
                                          isPacked:NO
                            isMessageSetWireFormat:NO];
    PBMutableExtensionRegistry* registry = [PBMutableExtensionRegistry registry];
    [self registerAllExtensions:registry];
    extensionRegistry = registry;
  }
}
+ (void) registerAllExtensions:(PBMutableExtensionRegistry*) registry {
  [registry addExtension:UnittestNoGenericServicesRoot_testExtension];
}
+ (id<PBExtensionField>) testExtension {
  return UnittestNoGenericServicesRoot_testExtension;
}
@end

BOOL TestEnumIsValidValue(TestEnum value) {
  switch (value) {
    case TestEnumFoo:
      return YES;
    default:
      return NO;
  }
}
@interface TestMessage ()
@property long a;
@end

@implementation TestMessage

- (BOOL) hasA {
  return !!hasA_;
}
- (void) setHasA:(BOOL) value_ {
  hasA_ = !!value_;
}
@synthesize a;
- (void) dealloc {
}
- (id) init {
  if ((self = [super init])) {
    self.a = 0;
  }
  return self;
}
static TestMessage* defaultTestMessageInstance = nil;
+ (void) initialize {
  if (self == [TestMessage class]) {
    defaultTestMessageInstance = [[TestMessage alloc] init];
  }
}
+ (TestMessage*) defaultInstance {
  return defaultTestMessageInstance;
}
- (TestMessage*) defaultInstance {
  return defaultTestMessageInstance;
}
- (BOOL) isInitialized {
  if (!self.extensionsAreInitialized) {
    return NO;
  }
  return YES;
}
- (void) writeToCodedOutputStream:(PBCodedOutputStream*) output {
  if (self.hasA) {
    [output writeInt32:1 value:self.a];
  }
  [self writeExtensionsToCodedOutputStream:output
                                      from:1000
                                        to:536870912];
  [self.unknownFields writeToCodedOutputStream:output];
}
- (long) serializedSize {
  long size_ = memoizedSerializedSize;
  if (size_ != -1) {
    return size_;
  }

  size_ = 0;
  if (self.hasA) {
    size_ += computeInt32Size(1, self.a);
  }
  size_ += [self extensionsSerializedSize];
  size_ += self.unknownFields.serializedSize;
  memoizedSerializedSize = size_;
  return size_;
}
+ (TestMessage*) parseFromData:(NSData*) data {
  return (TestMessage*)[[[TestMessage builder] mergeFromData:data] build];
}
+ (TestMessage*) parseFromData:(NSData*) data extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (TestMessage*)[[[TestMessage builder] mergeFromData:data extensionRegistry:extensionRegistry] build];
}
+ (TestMessage*) parseFromInputStream:(NSInputStream*) input {
  return (TestMessage*)[[[TestMessage builder] mergeFromInputStream:input] build];
}
+ (TestMessage*) parseFromInputStream:(NSInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (TestMessage*)[[[TestMessage builder] mergeFromInputStream:input extensionRegistry:extensionRegistry] build];
}
+ (TestMessage*) parseFromCodedInputStream:(PBCodedInputStream*) input {
  return (TestMessage*)[[[TestMessage builder] mergeFromCodedInputStream:input] build];
}
+ (TestMessage*) parseFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (TestMessage*)[[[TestMessage builder] mergeFromCodedInputStream:input extensionRegistry:extensionRegistry] build];
}
+ (TestMessageBuilder*) builder {
  return [[TestMessageBuilder alloc] init];
}
+ (TestMessageBuilder*) builderWithPrototype:(TestMessage*) prototype {
  return [[TestMessage builder] mergeFrom:prototype];
}
- (TestMessageBuilder*) builder {
  return [TestMessage builder];
}
- (TestMessageBuilder*) toBuilder {
  return [TestMessage builderWithPrototype:self];
}
- (void) writeDescriptionTo:(NSMutableString*) output withIndent:(NSString*) indent {
  if (self.hasA) {
    [output appendFormat:@"%@%@: %@\n", indent, @"a", [NSNumber numberWithInteger:self.a]];
  }
  [self writeExtensionDescriptionToMutableString:(NSMutableString*)output
                                            from:1000
                                              to:536870912
                                      withIndent:indent];
  [self.unknownFields writeDescriptionTo:output withIndent:indent];
}
- (BOOL) isEqual:(id)other {
  if (other == self) {
    return YES;
  }
  if (![other isKindOfClass:[TestMessage class]]) {
    return NO;
  }
  TestMessage *otherMessage = other;
  return
      self.hasA == otherMessage.hasA &&
      (!self.hasA || self.a == otherMessage.a) &&
      [self isEqualExtensionsInOther:otherMessage from:1000 to:536870912] &&

      (self.unknownFields == otherMessage.unknownFields || (self.unknownFields != nil && [self.unknownFields isEqual:otherMessage.unknownFields]));
}
- (NSUInteger) hash {
  __block NSUInteger hashCode = 7;
  if (self.hasA) {
    hashCode = hashCode * 31 + [[NSNumber numberWithInteger:self.a] hash];
  }
  hashCode = hashCode * 31 + [self hashExtensionsFrom:1000 to:536870912];
  hashCode = hashCode * 31 + [self.unknownFields hash];
  return hashCode;
}
@end

@interface TestMessageBuilder()
@property (strong) TestMessage* result;
@end

@implementation TestMessageBuilder
@synthesize result;
- (void) dealloc {
  self.result = nil;
}
- (id) init {
  if ((self = [super init])) {
    self.result = [[TestMessage alloc] init];
  }
  return self;
}
- (PBExtendableMessage*) internalGetResult {
  return result;
}
- (TestMessageBuilder*) clear {
  self.result = [[TestMessage alloc] init];
  return self;
}
- (TestMessageBuilder*) clone {
  return [TestMessage builderWithPrototype:result];
}
- (TestMessage*) defaultInstance {
  return [TestMessage defaultInstance];
}
- (TestMessage*) build {
  [self checkInitialized];
  return [self buildPartial];
}
- (TestMessage*) buildPartial {
  TestMessage* returnMe = result;
  self.result = nil;
  return returnMe;
}
- (TestMessageBuilder*) mergeFrom:(TestMessage*) other {
  if (other == [TestMessage defaultInstance]) {
    return self;
  }
  if (other.hasA) {
    [self setA:other.a];
  }
  [self mergeExtensionFields:other];
  [self mergeUnknownFields:other.unknownFields];
  return self;
}
- (TestMessageBuilder*) mergeFromCodedInputStream:(PBCodedInputStream*) input {
  return [self mergeFromCodedInputStream:input extensionRegistry:[PBExtensionRegistry emptyRegistry]];
}
- (TestMessageBuilder*) mergeFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  PBUnknownFieldSetBuilder* unknownFields = [PBUnknownFieldSet builderWithUnknownFields:self.unknownFields];
  while (YES) {
    NSInteger tag = [input readTag];
    switch (tag) {
      case 0:
        [self setUnknownFields:[unknownFields build]];
        return self;
      default: {
        if (![self parseUnknownField:input unknownFields:unknownFields extensionRegistry:extensionRegistry tag:tag]) {
          [self setUnknownFields:[unknownFields build]];
          return self;
        }
        break;
      }
      case 8: {
        [self setA:[input readInt32]];
        break;
      }
    }
  }
}
- (BOOL) hasA {
  return result.hasA;
}
- (long) a {
  return result.a;
}
- (TestMessageBuilder*) setA:(long) value {
  result.hasA = YES;
  result.a = value;
  return self;
}
- (TestMessageBuilder*) clearA {
  result.hasA = NO;
  result.a = 0;
  return self;
}
@end


// @@protoc_insertion_point(global_scope)
