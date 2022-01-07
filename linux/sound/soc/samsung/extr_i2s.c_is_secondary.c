
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i2s_dai {TYPE_1__* drv; } ;
struct TYPE_2__ {scalar_t__ id; } ;


 scalar_t__ SAMSUNG_I2S_ID_SECONDARY ;

__attribute__((used)) static inline bool is_secondary(struct i2s_dai *i2s)
{
 return i2s->drv->id == SAMSUNG_I2S_ID_SECONDARY;
}
