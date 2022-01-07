
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int __be32 ;


 int be32_to_cpu (int) ;
 void* cpu_to_be32 (int) ;
 int min (int,int) ;

__attribute__((used)) static u32 hfs_find_set_zero_bits(__be32 *bitmap, u32 size, u32 offset, u32 *max)
{
 __be32 *curr, *end;
 u32 mask, start, len, n;
 __be32 val;
 int i;

 len = *max;
 if (!len)
  return size;

 curr = bitmap + (offset / 32);
 end = bitmap + ((size + 31) / 32);


 val = *curr;
 if (~val) {
  n = be32_to_cpu(val);
  i = offset % 32;
  mask = (1U << 31) >> i;
  for (; i < 32; mask >>= 1, i++) {
   if (!(n & mask))
    goto found;
  }
 }


 while (++curr < end) {
  val = *curr;
  if (~val) {
   n = be32_to_cpu(val);
   mask = 1 << 31;
   for (i = 0; i < 32; mask >>= 1, i++) {
    if (!(n & mask))
     goto found;
   }
  }
 }
 return size;

found:
 start = (curr - bitmap) * 32 + i;
 if (start >= size)
  return start;

 len = min(size - start, len);
 while (1) {
  n |= mask;
  if (++i >= 32)
   break;
  mask >>= 1;
  if (!--len || n & mask)
   goto done;
 }
 if (!--len)
  goto done;
 *curr++ = cpu_to_be32(n);

 while (1) {
  n = be32_to_cpu(*curr);
  if (len < 32)
   break;
  if (n) {
   len = 32;
   break;
  }
  *curr++ = cpu_to_be32(0xffffffff);
  len -= 32;
 }

 mask = 1U << 31;
 for (i = 0; i < len; i++) {
  if (n & mask)
   break;
  n |= mask;
  mask >>= 1;
 }
done:
 *curr = cpu_to_be32(n);
 *max = (curr - bitmap) * 32 + i - start;
 return start;
}
