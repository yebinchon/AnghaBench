
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bitmask {unsigned int size; } ;


 scalar_t__ _getbit (struct bitmask const*,unsigned int) ;

int bitmask_isallclear(const struct bitmask *bmp)
{
 unsigned int i;
 for (i = 0; i < bmp->size; i++)
  if (_getbit(bmp, i))
   return 0;
 return 1;
}
