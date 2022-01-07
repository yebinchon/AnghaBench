
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bitmask {int dummy; } ;


 int _setbit (struct bitmask*,unsigned int,int) ;

struct bitmask *bitmask_setbit(struct bitmask *bmp, unsigned int i)
{
 _setbit(bmp, i, 1);
 return bmp;
}
