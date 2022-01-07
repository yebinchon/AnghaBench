
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int s64 ;


 int assert (int ) ;

__attribute__((used)) static int blkstol2(s64 nb)
{
 int l2nb;
 s64 mask;

 mask = (s64) 1 << (64 - 1);



 for (l2nb = 0; l2nb < 64; l2nb++, mask >>= 1) {


  if (nb & mask) {


   l2nb = (64 - 1) - l2nb;



   if (~mask & nb)
    l2nb++;

   return (l2nb);
  }
 }
 assert(0);
 return 0;
}
