
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned char u8 ;
typedef int u64 ;
typedef int u32 ;
typedef int __le64 ;


 int ALIGN (unsigned int const,int) ;
 int BFITNOENT ;
 int GFS2_NBBY ;
 int __ffs64 (int) ;
 int gfs2_bit_search (int const*,int,unsigned char) ;

__attribute__((used)) static u32 gfs2_bitfit(const u8 *buf, const unsigned int len,
         u32 goal, u8 state)
{
 u32 spoint = (goal << 1) & ((8*sizeof(u64)) - 1);
 const __le64 *ptr = ((__le64 *)buf) + (goal >> 5);
 const __le64 *end = (__le64 *)(buf + ALIGN(len, sizeof(u64)));
 u64 tmp;
 u64 mask = 0x5555555555555555ULL;
 u32 bit;


 mask <<= spoint;
 tmp = gfs2_bit_search(ptr, mask, state);
 ptr++;
 while(tmp == 0 && ptr < end) {
  tmp = gfs2_bit_search(ptr, 0x5555555555555555ULL, state);
  ptr++;
 }

 if (ptr == end && (len & (sizeof(u64) - 1)))
  tmp &= (((u64)~0) >> (64 - 8*(len & (sizeof(u64) - 1))));

 if (tmp == 0)
  return BFITNOENT;
 ptr--;
 bit = __ffs64(tmp);
 bit /= 2;
 return (((const unsigned char *)ptr - buf) * GFS2_NBBY) + bit;
}
