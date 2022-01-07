
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2s_dai {int dummy; } ;


 struct i2s_dai* get_other_dai (struct i2s_dai*) ;
 int rx_active (struct i2s_dai*) ;

__attribute__((used)) static inline bool other_rx_active(struct i2s_dai *i2s)
{
 struct i2s_dai *other = get_other_dai(i2s);

 return rx_active(other);
}
