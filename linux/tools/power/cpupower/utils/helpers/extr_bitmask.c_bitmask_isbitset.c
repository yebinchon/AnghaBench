
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bitmask {int dummy; } ;


 int _getbit (struct bitmask const*,unsigned int) ;

int bitmask_isbitset(const struct bitmask *bmp, unsigned int i)
{
 return _getbit(bmp, i);
}
