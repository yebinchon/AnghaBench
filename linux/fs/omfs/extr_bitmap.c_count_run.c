
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int find_next_bit (unsigned long*,int,int) ;
 int min (int,int) ;

__attribute__((used)) static int count_run(unsigned long **addr, int nbits,
  int addrlen, int bit, int max)
{
 int count = 0;
 int x;

 for (; addrlen > 0; addrlen--, addr++) {
  x = find_next_bit(*addr, nbits, bit);
  count += x - bit;

  if (x < nbits || count > max)
   return min(count, max);

  bit = 0;
 }
 return min(count, max);
}
