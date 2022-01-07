
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_runtime {unsigned int rate; } ;
struct rsnd_priv {int dummy; } ;
struct rsnd_mod {int dummy; } ;
struct rsnd_dai_stream {int dummy; } ;


 int rsnd_io_is_play (struct rsnd_dai_stream*) ;
 struct rsnd_mod* rsnd_io_to_mod_src (struct rsnd_dai_stream*) ;
 struct snd_pcm_runtime* rsnd_io_to_runtime (struct rsnd_dai_stream*) ;
 unsigned int rsnd_src_convert_rate (struct rsnd_dai_stream*,struct rsnd_mod*) ;

unsigned int rsnd_src_get_rate(struct rsnd_priv *priv,
          struct rsnd_dai_stream *io,
          int is_in)
{
 struct rsnd_mod *src_mod = rsnd_io_to_mod_src(io);
 struct snd_pcm_runtime *runtime = rsnd_io_to_runtime(io);
 unsigned int rate = 0;
 int is_play = rsnd_io_is_play(io);
 if (is_play == is_in)
  return runtime->rate;





 if (src_mod)
  rate = rsnd_src_convert_rate(io, src_mod);

 if (!rate)
  rate = runtime->rate;

 return rate;
}
