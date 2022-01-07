
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char u8 ;
typedef int u64 ;
typedef int u32 ;
typedef int u16 ;


 int get_unaligned (int const*) ;
 char hex_asc_hi (char) ;
 char hex_asc_lo (char) ;
 int is_power_of_2 (int) ;
 scalar_t__ isascii (char) ;
 scalar_t__ isprint (char) ;
 int snprintf (char*,size_t,char*,char*,int ) ;

int hex_dump_to_buffer(const void *buf, size_t len, int rowsize, int groupsize,
         char *linebuf, size_t linebuflen, bool ascii)
{
 const u8 *ptr = buf;
 int ngroups;
 u8 ch;
 int j, lx = 0;
 int ascii_column;
 int ret;

 if (rowsize != 16 && rowsize != 32)
  rowsize = 16;

 if (len > rowsize)
  len = rowsize;
 if (!is_power_of_2(groupsize) || groupsize > 8)
  groupsize = 1;
 if ((len % groupsize) != 0)
  groupsize = 1;

 ngroups = len / groupsize;
 ascii_column = rowsize * 2 + rowsize / groupsize + 1;

 if (!linebuflen)
  goto overflow1;

 if (!len)
  goto nil;

 if (groupsize == 8) {
  const u64 *ptr8 = buf;

  for (j = 0; j < ngroups; j++) {
   ret = snprintf(linebuf + lx, linebuflen - lx,
           "%s%16.16llx", j ? " " : "",
           get_unaligned(ptr8 + j));
   if (ret >= linebuflen - lx)
    goto overflow1;
   lx += ret;
  }
 } else if (groupsize == 4) {
  const u32 *ptr4 = buf;

  for (j = 0; j < ngroups; j++) {
   ret = snprintf(linebuf + lx, linebuflen - lx,
           "%s%8.8x", j ? " " : "",
           get_unaligned(ptr4 + j));
   if (ret >= linebuflen - lx)
    goto overflow1;
   lx += ret;
  }
 } else if (groupsize == 2) {
  const u16 *ptr2 = buf;

  for (j = 0; j < ngroups; j++) {
   ret = snprintf(linebuf + lx, linebuflen - lx,
           "%s%4.4x", j ? " " : "",
           get_unaligned(ptr2 + j));
   if (ret >= linebuflen - lx)
    goto overflow1;
   lx += ret;
  }
 } else {
  for (j = 0; j < len; j++) {
   if (linebuflen < lx + 2)
    goto overflow2;
   ch = ptr[j];
   linebuf[lx++] = hex_asc_hi(ch);
   if (linebuflen < lx + 2)
    goto overflow2;
   linebuf[lx++] = hex_asc_lo(ch);
   if (linebuflen < lx + 2)
    goto overflow2;
   linebuf[lx++] = ' ';
  }
  if (j)
   lx--;
 }
 if (!ascii)
  goto nil;

 while (lx < ascii_column) {
  if (linebuflen < lx + 2)
   goto overflow2;
  linebuf[lx++] = ' ';
 }
 for (j = 0; j < len; j++) {
  if (linebuflen < lx + 2)
   goto overflow2;
  ch = ptr[j];
  linebuf[lx++] = (isascii(ch) && isprint(ch)) ? ch : '.';
 }
nil:
 linebuf[lx] = '\0';
 return lx;
overflow2:
 linebuf[lx++] = '\0';
overflow1:
 return ascii ? ascii_column + len : (groupsize * 2 + 1) * ngroups - 1;
}
