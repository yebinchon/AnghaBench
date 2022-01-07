
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int tableType_t ;
struct TYPE_5__ {int internal_donotuse; } ;
typedef TYPE_1__ LZ4_stream_t ;


 int LZ4_64Klimit ;
 int LZ4_COMPRESSBOUND (int) ;
 int LZ4_compress_destSize_generic (int *,char const*,char*,int*,int,int const) ;
 int LZ4_compress_fast_extState (TYPE_1__*,char const*,char*,int,int,int) ;
 int LZ4_resetStream (TYPE_1__*) ;
 int byPtr ;
 int const byU16 ;
 int byU32 ;

__attribute__((used)) static int LZ4_compress_destSize_extState(
 LZ4_stream_t *state,
 const char *src,
 char *dst,
 int *srcSizePtr,
 int targetDstSize)
{



 const tableType_t tableType = byPtr;


 LZ4_resetStream(state);

 if (targetDstSize >= LZ4_COMPRESSBOUND(*srcSizePtr)) {

  return LZ4_compress_fast_extState(
   state, src, dst, *srcSizePtr,
   targetDstSize, 1);
 } else {
  if (*srcSizePtr < LZ4_64Klimit)
   return LZ4_compress_destSize_generic(
    &state->internal_donotuse,
    src, dst, srcSizePtr,
    targetDstSize, byU16);
  else
   return LZ4_compress_destSize_generic(
    &state->internal_donotuse,
    src, dst, srcSizePtr,
    targetDstSize, tableType);
 }
}
