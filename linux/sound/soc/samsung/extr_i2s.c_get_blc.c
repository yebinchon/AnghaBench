
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i2s_dai {TYPE_1__* priv; } ;
struct TYPE_2__ {scalar_t__ addr; } ;


 scalar_t__ I2SMOD ;
 int readl (scalar_t__) ;

__attribute__((used)) static inline int get_blc(struct i2s_dai *i2s)
{
 int blc = readl(i2s->priv->addr + I2SMOD);

 blc = (blc >> 13) & 0x3;

 switch (blc) {
 case 2: return 24;
 case 1: return 8;
 default: return 16;
 }
}
