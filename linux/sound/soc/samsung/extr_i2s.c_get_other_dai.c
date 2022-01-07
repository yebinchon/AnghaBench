
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2s_dai {struct i2s_dai* sec_dai; scalar_t__ pri_dai; } ;



__attribute__((used)) static inline struct i2s_dai *get_other_dai(struct i2s_dai *i2s)
{
 return i2s->pri_dai ? : i2s->sec_dai;
}
