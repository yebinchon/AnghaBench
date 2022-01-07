
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rsnd_priv {int dummy; } ;
struct rsnd_mod {int * ops; } ;
struct rsnd_dai_stream {int dummy; } ;
struct device {int dummy; } ;


 int dev_info (struct device*,char*,int ) ;
 int rsnd_mod_name (struct rsnd_mod*) ;
 struct device* rsnd_priv_to_dev (struct rsnd_priv*) ;
 int rsnd_ssi_pio_ops ;

__attribute__((used)) static int rsnd_ssi_fallback(struct rsnd_mod *mod,
        struct rsnd_dai_stream *io,
        struct rsnd_priv *priv)
{
 struct device *dev = rsnd_priv_to_dev(priv);
 mod->ops = &rsnd_ssi_pio_ops;

 dev_info(dev, "%s fallback to PIO mode\n", rsnd_mod_name(mod));

 return 0;
}
