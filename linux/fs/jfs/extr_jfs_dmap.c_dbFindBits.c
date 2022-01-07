
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int ASSERT (int) ;
 int DBWORD ;
 int ONES ;
 int assert (int) ;

__attribute__((used)) static int dbFindBits(u32 word, int l2nb)
{
 int bitno, nb;
 u32 mask;



 nb = 1 << l2nb;
 assert(nb <= DBWORD);




 word = ~word;
 mask = ONES << (DBWORD - nb);



 for (bitno = 0; mask != 0; bitno += nb, mask >>= nb) {
  if ((mask & word) == mask)
   break;
 }

 ASSERT(bitno < 32);



 return (bitno);
}
