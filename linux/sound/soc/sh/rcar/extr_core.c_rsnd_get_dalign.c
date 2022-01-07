
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct snd_pcm_runtime {int format; } ;
struct rsnd_mod {int dummy; } ;
struct rsnd_dai_stream {int dummy; } ;


 scalar_t__ rsnd_io_is_play (struct rsnd_dai_stream*) ;
 struct rsnd_mod* rsnd_io_to_mod_cmd (struct rsnd_dai_stream*) ;
 struct rsnd_mod* rsnd_io_to_mod_src (struct rsnd_dai_stream*) ;
 struct rsnd_mod* rsnd_io_to_mod_ssiu (struct rsnd_dai_stream*) ;
 struct snd_pcm_runtime* rsnd_io_to_runtime (struct rsnd_dai_stream*) ;
 int snd_pcm_format_width (int ) ;

u32 rsnd_get_dalign(struct rsnd_mod *mod, struct rsnd_dai_stream *io)
{
 struct rsnd_mod *ssiu = rsnd_io_to_mod_ssiu(io);
 struct rsnd_mod *target;
 struct snd_pcm_runtime *runtime = rsnd_io_to_runtime(io);
 if (rsnd_io_is_play(io)) {
  struct rsnd_mod *src = rsnd_io_to_mod_src(io);

  target = src ? src : ssiu;
 } else {
  struct rsnd_mod *cmd = rsnd_io_to_mod_cmd(io);

  target = cmd ? cmd : ssiu;
 }


 if ((snd_pcm_format_width(runtime->format) != 16) ||
     (mod != target))
  return 0x76543210;

 else
  return 0x67452301;
}
