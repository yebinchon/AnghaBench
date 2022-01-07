
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2s_dai {int dummy; } ;


 struct i2s_dai* get_other_dai (struct i2s_dai*) ;
 int tx_active (struct i2s_dai*) ;

__attribute__((used)) static inline bool other_tx_active(struct i2s_dai *i2s)
{
 struct i2s_dai *other = get_other_dai(i2s);

 return tx_active(other);
}
