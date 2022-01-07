
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int const* end; } ;
struct TYPE_6__ {TYPE_2__ internal_donotuse; } ;
typedef TYPE_1__ LZ4_streamHC_t ;
typedef TYPE_2__ LZ4HC_CCtx_internal ;
typedef int BYTE ;


 int KB ;
 int LZ4HC_Insert (TYPE_2__*,int const*) ;
 int LZ4HC_init (TYPE_2__*,int const*) ;

int LZ4_loadDictHC(LZ4_streamHC_t *LZ4_streamHCPtr,
 const char *dictionary,
 int dictSize)
{
 LZ4HC_CCtx_internal *ctxPtr = &LZ4_streamHCPtr->internal_donotuse;

 if (dictSize > 64 * KB) {
  dictionary += dictSize - 64 * KB;
  dictSize = 64 * KB;
 }
 LZ4HC_init(ctxPtr, (const BYTE *)dictionary);
 if (dictSize >= 4)
  LZ4HC_Insert(ctxPtr, (const BYTE *)dictionary + (dictSize - 3));
 ctxPtr->end = (const BYTE *)dictionary + dictSize;
 return dictSize;
}
