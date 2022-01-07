
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct i2s_dai {TYPE_1__* priv; } ;
struct TYPE_2__ {scalar_t__ addr; } ;


 int CON_RXDMA_ACTIVE ;
 scalar_t__ I2SCON ;
 int readl (scalar_t__) ;

__attribute__((used)) static inline bool rx_active(struct i2s_dai *i2s)
{
 u32 active;

 if (!i2s)
  return 0;

 active = readl(i2s->priv->addr + I2SCON) & CON_RXDMA_ACTIVE;

 return active ? 1 : 0;
}
