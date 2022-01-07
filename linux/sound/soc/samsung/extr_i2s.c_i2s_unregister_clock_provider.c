
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct samsung_i2s_priv {TYPE_2__* pdev; } ;
struct TYPE_3__ {int of_node; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;


 int i2s_unregister_clocks (struct samsung_i2s_priv*) ;
 int of_clk_del_provider (int ) ;

__attribute__((used)) static void i2s_unregister_clock_provider(struct samsung_i2s_priv *priv)
{
 of_clk_del_provider(priv->pdev->dev.of_node);
 i2s_unregister_clocks(priv);
}
