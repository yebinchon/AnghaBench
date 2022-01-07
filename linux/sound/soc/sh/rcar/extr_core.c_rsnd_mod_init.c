
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rsnd_priv {int dummy; } ;
struct rsnd_mod_ops {int dummy; } ;
struct rsnd_mod {int id; int type; struct rsnd_priv* priv; struct clk* clk; struct rsnd_mod_ops* ops; } ;
struct clk {int dummy; } ;
typedef enum rsnd_mod_type { ____Placeholder_rsnd_mod_type } rsnd_mod_type ;


 int clk_prepare (struct clk*) ;

int rsnd_mod_init(struct rsnd_priv *priv,
    struct rsnd_mod *mod,
    struct rsnd_mod_ops *ops,
    struct clk *clk,
    enum rsnd_mod_type type,
    int id)
{
 int ret = clk_prepare(clk);

 if (ret)
  return ret;

 mod->id = id;
 mod->ops = ops;
 mod->type = type;
 mod->clk = clk;
 mod->priv = priv;

 return ret;
}
