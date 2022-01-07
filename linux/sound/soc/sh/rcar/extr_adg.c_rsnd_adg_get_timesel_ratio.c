
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct snd_pcm_runtime {unsigned int rate; } ;
struct rsnd_priv {int dummy; } ;
struct rsnd_dai_stream {int dummy; } ;


 int __rsnd_adg_get_timesel_ratio (struct rsnd_priv*,struct rsnd_dai_stream*,unsigned int,scalar_t__*,scalar_t__*) ;
 scalar_t__ rsnd_adg_ssi_ws_timing_gen2 (struct rsnd_dai_stream*) ;
 struct snd_pcm_runtime* rsnd_io_to_runtime (struct rsnd_dai_stream*) ;

__attribute__((used)) static void rsnd_adg_get_timesel_ratio(struct rsnd_priv *priv,
           struct rsnd_dai_stream *io,
           unsigned int in_rate,
           unsigned int out_rate,
           u32 *in, u32 *out, u32 *en)
{
 struct snd_pcm_runtime *runtime = rsnd_io_to_runtime(io);
 unsigned int target_rate;
 u32 *target_val;
 u32 _in;
 u32 _out;
 u32 _en;


 _in =
 _out = rsnd_adg_ssi_ws_timing_gen2(io);

 target_rate = 0;
 target_val = ((void*)0);
 _en = 0;
 if (runtime->rate != in_rate) {
  target_rate = out_rate;
  target_val = &_out;
 } else if (runtime->rate != out_rate) {
  target_rate = in_rate;
  target_val = &_in;
 }

 if (target_rate)
  __rsnd_adg_get_timesel_ratio(priv, io,
          target_rate,
          target_val, &_en);

 if (in)
  *in = _in;
 if (out)
  *out = _out;
 if (en)
  *en = _en;
}
