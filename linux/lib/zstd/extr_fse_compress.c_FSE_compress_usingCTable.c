
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FSE_CTable ;


 size_t FSE_BLOCKBOUND (size_t) ;
 size_t FSE_compress_usingCTable_generic (void*,size_t,void const*,size_t,int const*,int) ;

size_t FSE_compress_usingCTable(void *dst, size_t dstSize, const void *src, size_t srcSize, const FSE_CTable *ct)
{
 unsigned const fast = (dstSize >= FSE_BLOCKBOUND(srcSize));

 if (fast)
  return FSE_compress_usingCTable_generic(dst, dstSize, src, srcSize, ct, 1);
 else
  return FSE_compress_usingCTable_generic(dst, dstSize, src, srcSize, ct, 0);
}
