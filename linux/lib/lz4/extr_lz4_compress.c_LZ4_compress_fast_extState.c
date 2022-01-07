
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int tableType_t ;
struct TYPE_3__ {int internal_donotuse; } ;
typedef int LZ4_stream_t_internal ;
typedef TYPE_1__ LZ4_stream_t ;


 int LZ4_64Klimit ;
 int LZ4_ACCELERATION_DEFAULT ;
 int LZ4_COMPRESSBOUND (int) ;
 int LZ4_compress_generic (int *,char const*,char*,int,int,int ,int const,int ,int ,int) ;
 int LZ4_resetStream (TYPE_1__*) ;
 int byPtr ;
 int const byU16 ;
 int byU32 ;
 int limitedOutput ;
 int noDict ;
 int noDictIssue ;
 int noLimit ;

__attribute__((used)) static int LZ4_compress_fast_extState(
 void *state,
 const char *source,
 char *dest,
 int inputSize,
 int maxOutputSize,
 int acceleration)
{
 LZ4_stream_t_internal *ctx = &((LZ4_stream_t *)state)->internal_donotuse;



 const tableType_t tableType = byPtr;


 LZ4_resetStream((LZ4_stream_t *)state);

 if (acceleration < 1)
  acceleration = LZ4_ACCELERATION_DEFAULT;

 if (maxOutputSize >= LZ4_COMPRESSBOUND(inputSize)) {
  if (inputSize < LZ4_64Klimit)
   return LZ4_compress_generic(ctx, source,
    dest, inputSize, 0,
    noLimit, byU16, noDict,
    noDictIssue, acceleration);
  else
   return LZ4_compress_generic(ctx, source,
    dest, inputSize, 0,
    noLimit, tableType, noDict,
    noDictIssue, acceleration);
 } else {
  if (inputSize < LZ4_64Klimit)
   return LZ4_compress_generic(ctx, source,
    dest, inputSize,
    maxOutputSize, limitedOutput, byU16, noDict,
    noDictIssue, acceleration);
  else
   return LZ4_compress_generic(ctx, source,
    dest, inputSize,
    maxOutputSize, limitedOutput, tableType, noDict,
    noDictIssue, acceleration);
 }
}
