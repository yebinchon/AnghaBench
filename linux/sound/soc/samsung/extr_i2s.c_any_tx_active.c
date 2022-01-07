
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2s_dai {int dummy; } ;


 scalar_t__ other_tx_active (struct i2s_dai*) ;
 scalar_t__ tx_active (struct i2s_dai*) ;

__attribute__((used)) static inline bool any_tx_active(struct i2s_dai *i2s)
{
 return tx_active(i2s) || other_tx_active(i2s);
}
