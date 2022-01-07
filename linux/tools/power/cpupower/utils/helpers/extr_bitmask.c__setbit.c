
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bitmask {unsigned int size; unsigned long* maskp; } ;


 unsigned int bitsperlong ;

__attribute__((used)) static void _setbit(struct bitmask *bmp, unsigned int n, unsigned int v)
{
 if (n < bmp->size) {
  if (v)
   bmp->maskp[n/bitsperlong] |= 1UL << (n % bitsperlong);
  else
   bmp->maskp[n/bitsperlong] &=
    ~(1UL << (n % bitsperlong));
 }
}
