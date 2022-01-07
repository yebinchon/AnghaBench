
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef void* U32 ;
struct TYPE_6__ {int dictSize; int currentOffset; int const* dictionary; scalar_t__ initCheck; } ;
struct TYPE_7__ {TYPE_1__ internal_donotuse; } ;
typedef TYPE_1__ LZ4_stream_t_internal ;
typedef TYPE_2__ LZ4_stream_t ;
typedef int const BYTE ;


 int KB ;
 int LZ4_ACCELERATION_DEFAULT ;
 int LZ4_compress_generic (TYPE_1__*,char const*,char*,int,int,int ,int ,int ,int ,int) ;
 int LZ4_renormDictT (TYPE_1__*,int const*) ;
 int byU32 ;
 int dictSmall ;
 int limitedOutput ;
 int noDictIssue ;
 int usingExtDict ;
 int withPrefix64k ;

int LZ4_compress_fast_continue(LZ4_stream_t *LZ4_stream, const char *source,
 char *dest, int inputSize, int maxOutputSize, int acceleration)
{
 LZ4_stream_t_internal *streamPtr = &LZ4_stream->internal_donotuse;
 const BYTE * const dictEnd = streamPtr->dictionary
  + streamPtr->dictSize;

 const BYTE *smallest = (const BYTE *) source;

 if (streamPtr->initCheck) {

  return 0;
 }

 if ((streamPtr->dictSize > 0) && (smallest > dictEnd))
  smallest = dictEnd;

 LZ4_renormDictT(streamPtr, smallest);

 if (acceleration < 1)
  acceleration = LZ4_ACCELERATION_DEFAULT;


 {
  const BYTE *sourceEnd = (const BYTE *) source + inputSize;

  if ((sourceEnd > streamPtr->dictionary)
   && (sourceEnd < dictEnd)) {
   streamPtr->dictSize = (U32)(dictEnd - sourceEnd);
   if (streamPtr->dictSize > 64 * KB)
    streamPtr->dictSize = 64 * KB;
   if (streamPtr->dictSize < 4)
    streamPtr->dictSize = 0;
   streamPtr->dictionary = dictEnd - streamPtr->dictSize;
  }
 }


 if (dictEnd == (const BYTE *)source) {
  int result;

  if ((streamPtr->dictSize < 64 * KB) &&
   (streamPtr->dictSize < streamPtr->currentOffset)) {
   result = LZ4_compress_generic(
    streamPtr, source, dest, inputSize,
    maxOutputSize, limitedOutput, byU32,
    withPrefix64k, dictSmall, acceleration);
  } else {
   result = LZ4_compress_generic(
    streamPtr, source, dest, inputSize,
    maxOutputSize, limitedOutput, byU32,
    withPrefix64k, noDictIssue, acceleration);
  }
  streamPtr->dictSize += (U32)inputSize;
  streamPtr->currentOffset += (U32)inputSize;
  return result;
 }


 {
  int result;

  if ((streamPtr->dictSize < 64 * KB) &&
   (streamPtr->dictSize < streamPtr->currentOffset)) {
   result = LZ4_compress_generic(
    streamPtr, source, dest, inputSize,
    maxOutputSize, limitedOutput, byU32,
    usingExtDict, dictSmall, acceleration);
  } else {
   result = LZ4_compress_generic(
    streamPtr, source, dest, inputSize,
    maxOutputSize, limitedOutput, byU32,
    usingExtDict, noDictIssue, acceleration);
  }
  streamPtr->dictionary = (const BYTE *)source;
  streamPtr->dictSize = (U32)inputSize;
  streamPtr->currentOffset += (U32)inputSize;
  return result;
 }
}
