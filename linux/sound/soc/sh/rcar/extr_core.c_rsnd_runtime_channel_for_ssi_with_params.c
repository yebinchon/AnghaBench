
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_hw_params {int dummy; } ;
struct rsnd_dai_stream {int dummy; } ;
struct rsnd_dai {int dummy; } ;


 int rsnd_channel_normalization (int) ;
 scalar_t__ rsnd_io_is_play (struct rsnd_dai_stream*) ;
 struct rsnd_dai* rsnd_io_to_rdai (struct rsnd_dai_stream*) ;
 int rsnd_rdai_ssi_lane_get (struct rsnd_dai*) ;
 int rsnd_runtime_channel_after_ctu_with_params (struct rsnd_dai_stream*,struct snd_pcm_hw_params*) ;
 int rsnd_runtime_channel_original_with_params (struct rsnd_dai_stream*,struct snd_pcm_hw_params*) ;
 scalar_t__ rsnd_runtime_is_multi_ssi (struct rsnd_dai_stream*) ;

int rsnd_runtime_channel_for_ssi_with_params(struct rsnd_dai_stream *io,
          struct snd_pcm_hw_params *params)
{
 struct rsnd_dai *rdai = rsnd_io_to_rdai(io);
 int chan = rsnd_io_is_play(io) ?
  rsnd_runtime_channel_after_ctu_with_params(io, params) :
  rsnd_runtime_channel_original_with_params(io, params);


 if (rsnd_runtime_is_multi_ssi(io))
  chan /= rsnd_rdai_ssi_lane_get(rdai);

 return rsnd_channel_normalization(chan);
}
