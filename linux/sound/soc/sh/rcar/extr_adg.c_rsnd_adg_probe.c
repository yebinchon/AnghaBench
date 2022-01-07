
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rsnd_priv {struct rsnd_adg* adg; } ;
struct rsnd_adg {int mod; } ;
struct device {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int adg_ops ;
 struct rsnd_adg* devm_kzalloc (struct device*,int,int ) ;
 int rsnd_adg_clk_dbg_info (struct rsnd_priv*,struct rsnd_adg*) ;
 int rsnd_adg_clk_enable (struct rsnd_priv*) ;
 int rsnd_adg_get_clkin (struct rsnd_priv*,struct rsnd_adg*) ;
 int rsnd_adg_get_clkout (struct rsnd_priv*,struct rsnd_adg*) ;
 int rsnd_mod_init (struct rsnd_priv*,int *,int *,int *,int ,int ) ;
 struct device* rsnd_priv_to_dev (struct rsnd_priv*) ;

int rsnd_adg_probe(struct rsnd_priv *priv)
{
 struct rsnd_adg *adg;
 struct device *dev = rsnd_priv_to_dev(priv);
 int ret;

 adg = devm_kzalloc(dev, sizeof(*adg), GFP_KERNEL);
 if (!adg)
  return -ENOMEM;

 ret = rsnd_mod_init(priv, &adg->mod, &adg_ops,
        ((void*)0), 0, 0);
 if (ret)
  return ret;

 rsnd_adg_get_clkin(priv, adg);
 rsnd_adg_get_clkout(priv, adg);
 rsnd_adg_clk_dbg_info(priv, adg);

 priv->adg = adg;

 rsnd_adg_clk_enable(priv);

 return 0;
}
