
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bitmask {int dummy; } ;


 unsigned int bitmask_next (struct bitmask const*,int ) ;

unsigned int bitmask_first(const struct bitmask *bmp)
{
 return bitmask_next(bmp, 0);
}
