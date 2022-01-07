
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct snd_pcm_runtime {int format; } ;
struct rsnd_priv {int dummy; } ;
struct rsnd_mod {int dummy; } ;
struct rsnd_dai_stream {int dummy; } ;
struct device {int dummy; } ;


 int dev_warn (struct device*,char*) ;
 struct snd_pcm_runtime* rsnd_io_to_runtime (struct rsnd_dai_stream*) ;
 struct rsnd_priv* rsnd_mod_to_priv (struct rsnd_mod*) ;
 struct device* rsnd_priv_to_dev (struct rsnd_priv*) ;
 int snd_pcm_format_width (int ) ;

u32 rsnd_get_adinr_bit(struct rsnd_mod *mod, struct rsnd_dai_stream *io)
{
 struct rsnd_priv *priv = rsnd_mod_to_priv(mod);
 struct snd_pcm_runtime *runtime = rsnd_io_to_runtime(io);
 struct device *dev = rsnd_priv_to_dev(priv);

 switch (snd_pcm_format_width(runtime->format)) {
 case 8:
  return 16 << 16;
 case 16:
  return 8 << 16;
 case 24:
  return 0 << 16;
 }

 dev_warn(dev, "not supported sample bits\n");

 return 0;
}
