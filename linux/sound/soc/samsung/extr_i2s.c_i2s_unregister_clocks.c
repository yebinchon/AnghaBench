
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int clk_num; } ;
struct samsung_i2s_priv {int * clk_table; TYPE_1__ clk_data; } ;


 int IS_ERR (int ) ;
 int clk_unregister (int ) ;

__attribute__((used)) static void i2s_unregister_clocks(struct samsung_i2s_priv *priv)
{
 int i;

 for (i = 0; i < priv->clk_data.clk_num; i++) {
  if (!IS_ERR(priv->clk_table[i]))
   clk_unregister(priv->clk_table[i]);
 }
}
