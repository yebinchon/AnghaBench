
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rsnd_priv {int dummy; } ;
struct rsnd_adg {struct clk** clk; } ;
struct device {int dummy; } ;
struct clk {int dummy; } ;


 int CLKMAX ;
 scalar_t__ IS_ERR (struct clk*) ;
 int * clk_name ;
 struct clk* devm_clk_get (struct device*,int ) ;
 struct device* rsnd_priv_to_dev (struct rsnd_priv*) ;

__attribute__((used)) static void rsnd_adg_get_clkin(struct rsnd_priv *priv,
          struct rsnd_adg *adg)
{
 struct device *dev = rsnd_priv_to_dev(priv);
 struct clk *clk;
 int i;

 for (i = 0; i < CLKMAX; i++) {
  clk = devm_clk_get(dev, clk_name[i]);
  adg->clk[i] = IS_ERR(clk) ? ((void*)0) : clk;
 }
}
