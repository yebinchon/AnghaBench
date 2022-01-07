
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bitmask {unsigned int size; } ;


 scalar_t__ _getbit (struct bitmask const*,unsigned int) ;

unsigned int bitmask_next(const struct bitmask *bmp, unsigned int i)
{
 unsigned int n;
 for (n = i; n < bmp->size; n++)
  if (_getbit(bmp, n))
   break;
 return n;
}
