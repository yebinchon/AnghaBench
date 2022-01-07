
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_runtime {int dummy; } ;
struct rsnd_priv {int dummy; } ;
struct rsnd_dai_stream {int dummy; } ;
struct device {int dummy; } ;


 int dev_warn (struct device*,char*) ;
 struct rsnd_priv* rsnd_io_to_priv (struct rsnd_dai_stream*) ;
 struct snd_pcm_runtime* rsnd_io_to_runtime (struct rsnd_dai_stream*) ;
 struct device* rsnd_priv_to_dev (struct rsnd_priv*) ;

int rsnd_kctrl_accept_runtime(struct rsnd_dai_stream *io)
{
 struct snd_pcm_runtime *runtime = rsnd_io_to_runtime(io);
 struct rsnd_priv *priv = rsnd_io_to_priv(io);
 struct device *dev = rsnd_priv_to_dev(priv);

 if (!runtime) {
  dev_warn(dev, "Can't update kctrl when idle\n");
  return 0;
 }

 return 1;
}
