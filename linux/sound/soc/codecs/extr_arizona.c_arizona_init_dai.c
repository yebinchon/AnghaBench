
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arizona_priv {struct arizona_dai_priv* dai; } ;
struct arizona_dai_priv {int constraint; int clk; } ;


 int ARIZONA_CLK_SYSCLK ;
 int arizona_constraint ;

int arizona_init_dai(struct arizona_priv *priv, int id)
{
 struct arizona_dai_priv *dai_priv = &priv->dai[id];

 dai_priv->clk = ARIZONA_CLK_SYSCLK;
 dai_priv->constraint = arizona_constraint;

 return 0;
}
