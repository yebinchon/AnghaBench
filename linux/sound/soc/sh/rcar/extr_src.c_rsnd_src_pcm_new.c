
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_pcm_runtime {int dummy; } ;
struct rsnd_src {int sync; int sen; } ;
struct rsnd_mod {int dummy; } ;
struct rsnd_dai_stream {int dummy; } ;


 scalar_t__ rsnd_io_is_play (struct rsnd_dai_stream*) ;
 scalar_t__ rsnd_io_to_mod_cmd (struct rsnd_dai_stream*) ;
 int rsnd_kctrl_accept_anytime ;
 int rsnd_kctrl_accept_runtime ;
 int rsnd_kctrl_new_s (struct rsnd_mod*,struct rsnd_dai_stream*,struct snd_soc_pcm_runtime*,char*,int ,int ,int *,int) ;
 struct rsnd_src* rsnd_mod_to_src (struct rsnd_mod*) ;
 int rsnd_src_set_convert_rate ;

__attribute__((used)) static int rsnd_src_pcm_new(struct rsnd_mod *mod,
       struct rsnd_dai_stream *io,
       struct snd_soc_pcm_runtime *rtd)
{
 struct rsnd_src *src = rsnd_mod_to_src(mod);
 int ret;
 if (rsnd_io_to_mod_cmd(io) && !rsnd_io_is_play(io))
  return 0;




 ret = rsnd_kctrl_new_s(mod, io, rtd,
          rsnd_io_is_play(io) ?
          "SRC Out Rate Switch" :
          "SRC In Rate Switch",
          rsnd_kctrl_accept_anytime,
          rsnd_src_set_convert_rate,
          &src->sen, 1);
 if (ret < 0)
  return ret;

 ret = rsnd_kctrl_new_s(mod, io, rtd,
          rsnd_io_is_play(io) ?
          "SRC Out Rate" :
          "SRC In Rate",
          rsnd_kctrl_accept_runtime,
          rsnd_src_set_convert_rate,
          &src->sync, 192000);

 return ret;
}
