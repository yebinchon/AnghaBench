
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int U16 ;
typedef int HUF_CElt ;
typedef int BYTE ;


 int CHECK_V_F (scalar_t__,int ) ;
 int HUF_compress1X_usingCTable (int *,int,int const*,size_t const,int const*) ;
 int ZSTD_writeLE16 (int * const,int ) ;
 scalar_t__ cSize ;

size_t HUF_compress4X_usingCTable(void *dst, size_t dstSize, const void *src, size_t srcSize, const HUF_CElt *CTable)
{
 size_t const segmentSize = (srcSize + 3) / 4;
 const BYTE *ip = (const BYTE *)src;
 const BYTE *const iend = ip + srcSize;
 BYTE *const ostart = (BYTE *)dst;
 BYTE *const oend = ostart + dstSize;
 BYTE *op = ostart;

 if (dstSize < 6 + 1 + 1 + 1 + 8)
  return 0;
 if (srcSize < 12)
  return 0;
 op += 6;

 {
  CHECK_V_F(cSize, HUF_compress1X_usingCTable(op, oend - op, ip, segmentSize, CTable));
  if (cSize == 0)
   return 0;
  ZSTD_writeLE16(ostart, (U16)cSize);
  op += cSize;
 }

 ip += segmentSize;
 {
  CHECK_V_F(cSize, HUF_compress1X_usingCTable(op, oend - op, ip, segmentSize, CTable));
  if (cSize == 0)
   return 0;
  ZSTD_writeLE16(ostart + 2, (U16)cSize);
  op += cSize;
 }

 ip += segmentSize;
 {
  CHECK_V_F(cSize, HUF_compress1X_usingCTable(op, oend - op, ip, segmentSize, CTable));
  if (cSize == 0)
   return 0;
  ZSTD_writeLE16(ostart + 4, (U16)cSize);
  op += cSize;
 }

 ip += segmentSize;
 {
  CHECK_V_F(cSize, HUF_compress1X_usingCTable(op, oend - op, ip, iend - ip, CTable));
  if (cSize == 0)
   return 0;
  op += cSize;
 }

 return op - ostart;
}
