
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rsnd_priv {int dummy; } ;
struct rsnd_mod {int type; } ;
struct device {int dummy; } ;
typedef enum rsnd_mod_type { ____Placeholder_rsnd_mod_type } rsnd_mod_type ;


 int dev_warn (struct device*,char*,int ) ;
 int rsnd_mod_name (struct rsnd_mod*) ;
 struct rsnd_priv* rsnd_mod_to_priv (struct rsnd_mod*) ;
 struct device* rsnd_priv_to_dev (struct rsnd_priv*) ;

void rsnd_mod_make_sure(struct rsnd_mod *mod, enum rsnd_mod_type type)
{
 if (mod->type != type) {
  struct rsnd_priv *priv = rsnd_mod_to_priv(mod);
  struct device *dev = rsnd_priv_to_dev(priv);

  dev_warn(dev, "%s is not your expected module\n",
    rsnd_mod_name(mod));
 }
}
