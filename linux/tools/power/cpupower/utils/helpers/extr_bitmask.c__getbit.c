
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bitmask {unsigned int size; unsigned int* maskp; } ;


 unsigned int bitsperlong ;

__attribute__((used)) static unsigned int _getbit(const struct bitmask *bmp, unsigned int n)
{
 if (n < bmp->size)
  return (bmp->maskp[n/bitsperlong] >> (n % bitsperlong)) & 1;
 else
  return 0;
}
