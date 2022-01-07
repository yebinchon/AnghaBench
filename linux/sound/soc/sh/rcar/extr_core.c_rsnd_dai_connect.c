
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rsnd_priv {int dummy; } ;
struct rsnd_mod {int dummy; } ;
struct rsnd_dai_stream {struct rsnd_mod** mod; } ;
struct device {int dummy; } ;
typedef enum rsnd_mod_type { ____Placeholder_rsnd_mod_type } rsnd_mod_type ;


 int EINVAL ;
 int EIO ;
 int dev_dbg (struct device*,char*,int ,char*) ;
 scalar_t__ rsnd_io_is_play (struct rsnd_dai_stream*) ;
 int rsnd_mod_name (struct rsnd_mod*) ;
 struct rsnd_priv* rsnd_mod_to_priv (struct rsnd_mod*) ;
 struct device* rsnd_priv_to_dev (struct rsnd_priv*) ;

int rsnd_dai_connect(struct rsnd_mod *mod,
       struct rsnd_dai_stream *io,
       enum rsnd_mod_type type)
{
 struct rsnd_priv *priv;
 struct device *dev;

 if (!mod)
  return -EIO;

 if (io->mod[type] == mod)
  return 0;

 if (io->mod[type])
  return -EINVAL;

 priv = rsnd_mod_to_priv(mod);
 dev = rsnd_priv_to_dev(priv);

 io->mod[type] = mod;

 dev_dbg(dev, "%s is connected to io (%s)\n",
  rsnd_mod_name(mod),
  rsnd_io_is_play(io) ? "Playback" : "Capture");

 return 0;
}
