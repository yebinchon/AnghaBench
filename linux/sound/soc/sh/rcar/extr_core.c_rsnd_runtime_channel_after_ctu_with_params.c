
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct snd_pcm_hw_params {int dummy; } ;
struct rsnd_mod {int dummy; } ;
struct rsnd_dai_stream {int dummy; } ;
struct device {int dummy; } ;


 int dev_err (struct device*,char*) ;
 int rsnd_io_converted_chan (struct rsnd_dai_stream*) ;
 struct rsnd_mod* rsnd_io_to_mod_ctu (struct rsnd_dai_stream*) ;
 int rsnd_io_to_priv (struct rsnd_dai_stream*) ;
 struct device* rsnd_priv_to_dev (int ) ;
 int rsnd_runtime_channel_original_with_params (struct rsnd_dai_stream*,struct snd_pcm_hw_params*) ;
 scalar_t__ rsnd_runtime_is_tdm_split (struct rsnd_dai_stream*) ;

int rsnd_runtime_channel_after_ctu_with_params(struct rsnd_dai_stream *io,
            struct snd_pcm_hw_params *params)
{
 int chan = rsnd_runtime_channel_original_with_params(io, params);
 struct rsnd_mod *ctu_mod = rsnd_io_to_mod_ctu(io);

 if (ctu_mod) {
  u32 converted_chan = rsnd_io_converted_chan(io);
  if (rsnd_runtime_is_tdm_split(io)) {
   struct device *dev = rsnd_priv_to_dev(rsnd_io_to_priv(io));

   dev_err(dev, "CTU and TDM Split should be used\n");
  }

  if (converted_chan)
   return converted_chan;
 }

 return chan;
}
