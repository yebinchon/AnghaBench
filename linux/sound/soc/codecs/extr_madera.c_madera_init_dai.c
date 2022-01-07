
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct madera_priv {struct madera_dai_priv* dai; } ;
struct madera_dai_priv {int constraint; int clk; } ;


 int MADERA_CLK_SYSCLK_1 ;
 int madera_constraint ;

int madera_init_dai(struct madera_priv *priv, int id)
{
 struct madera_dai_priv *dai_priv = &priv->dai[id];

 dai_priv->clk = MADERA_CLK_SYSCLK_1;
 dai_priv->constraint = madera_constraint;

 return 0;
}
