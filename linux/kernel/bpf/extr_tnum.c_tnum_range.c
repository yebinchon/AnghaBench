
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
struct tnum {int dummy; } ;


 struct tnum TNUM (int,int) ;
 int fls64 (int) ;
 struct tnum tnum_unknown ;

struct tnum tnum_range(u64 min, u64 max)
{
 u64 chi = min ^ max, delta;
 u8 bits = fls64(chi);


 if (bits > 63)
  return tnum_unknown;




 delta = (1ULL << bits) - 1;
 return TNUM(min & ~delta, delta);
}
