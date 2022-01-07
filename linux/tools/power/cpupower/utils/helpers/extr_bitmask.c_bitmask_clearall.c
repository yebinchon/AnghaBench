
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bitmask {unsigned int size; } ;


 int _setbit (struct bitmask*,unsigned int,int ) ;

struct bitmask *bitmask_clearall(struct bitmask *bmp)
{
 unsigned int i;
 for (i = 0; i < bmp->size; i++)
  _setbit(bmp, i, 0);
 return bmp;
}
