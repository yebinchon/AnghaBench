
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct snd_pcm_runtime {int format; } ;
struct rsnd_mod {int dummy; } ;
struct rsnd_dai_stream {int dummy; } ;
typedef enum rsnd_mod_type { ____Placeholder_rsnd_mod_type } rsnd_mod_type ;


 int ARRAY_SIZE (int*) ;
 int RSND_MOD_CMD ;
 int RSND_MOD_SRC ;
 int RSND_MOD_SSIU ;
 scalar_t__ rsnd_io_is_play (struct rsnd_dai_stream*) ;
 struct rsnd_mod* rsnd_io_to_mod (struct rsnd_dai_stream*,int) ;
 struct snd_pcm_runtime* rsnd_io_to_runtime (struct rsnd_dai_stream*) ;
 int snd_pcm_format_width (int ) ;

u32 rsnd_get_busif_shift(struct rsnd_dai_stream *io, struct rsnd_mod *mod)
{
 enum rsnd_mod_type playback_mods[] = {
  RSND_MOD_SRC,
  RSND_MOD_CMD,
  RSND_MOD_SSIU,
 };
 enum rsnd_mod_type capture_mods[] = {
  RSND_MOD_CMD,
  RSND_MOD_SRC,
  RSND_MOD_SSIU,
 };
 struct snd_pcm_runtime *runtime = rsnd_io_to_runtime(io);
 struct rsnd_mod *tmod = ((void*)0);
 enum rsnd_mod_type *mods =
  rsnd_io_is_play(io) ?
  playback_mods : capture_mods;
 int i;
 if (snd_pcm_format_width(runtime->format) != 24)
  return 0;

 for (i = 0; i < ARRAY_SIZE(playback_mods); i++) {
  tmod = rsnd_io_to_mod(io, mods[i]);
  if (tmod)
   break;
 }

 if (tmod != mod)
  return 0;

 if (rsnd_io_is_play(io))
  return (0 << 20) |
   (8 << 16);
 else
  return (1 << 20) |
   (8 << 16);
}
