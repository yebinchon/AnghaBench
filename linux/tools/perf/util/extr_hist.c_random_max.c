
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int random () ;

__attribute__((used)) static unsigned random_max(unsigned high)
{
 unsigned thresh = -high % high;
 for (;;) {
  unsigned r = random();
  if (r >= thresh)
   return r % high;
 }
}
