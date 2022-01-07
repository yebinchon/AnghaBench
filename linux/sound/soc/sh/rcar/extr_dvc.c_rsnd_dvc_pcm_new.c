
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_pcm_runtime {int dummy; } ;
struct rsnd_mod {int dummy; } ;
struct rsnd_dvc {int rdown; int rup; int ren; int mute; int volume; } ;
struct rsnd_dai_stream {int dummy; } ;
struct rsnd_dai {int dummy; } ;


 int VOLUME_RAMP_MAX_DVC ;
 int rsnd_dvc_volume_update ;
 int rsnd_io_is_play (struct rsnd_dai_stream*) ;
 struct rsnd_dai* rsnd_io_to_rdai (struct rsnd_dai_stream*) ;
 int rsnd_kctrl_accept_anytime ;
 int rsnd_kctrl_new_e (struct rsnd_mod*,struct rsnd_dai_stream*,struct snd_soc_pcm_runtime*,char*,int ,int ,int *,int ,int ) ;
 int rsnd_kctrl_new_m (struct rsnd_mod*,struct rsnd_dai_stream*,struct snd_soc_pcm_runtime*,char*,int ,int ,int *,int,int) ;
 int rsnd_kctrl_new_s (struct rsnd_mod*,struct rsnd_dai_stream*,struct snd_soc_pcm_runtime*,char*,int ,int ,int *,int) ;
 struct rsnd_dvc* rsnd_mod_to_dvc (struct rsnd_mod*) ;
 int rsnd_rdai_channels_get (struct rsnd_dai*) ;
 int volume_ramp_rate ;

__attribute__((used)) static int rsnd_dvc_pcm_new(struct rsnd_mod *mod,
       struct rsnd_dai_stream *io,
       struct snd_soc_pcm_runtime *rtd)
{
 struct rsnd_dvc *dvc = rsnd_mod_to_dvc(mod);
 struct rsnd_dai *rdai = rsnd_io_to_rdai(io);
 int is_play = rsnd_io_is_play(io);
 int channels = rsnd_rdai_channels_get(rdai);
 int ret;


 ret = rsnd_kctrl_new_m(mod, io, rtd,
   is_play ?
   "DVC Out Playback Volume" : "DVC In Capture Volume",
   rsnd_kctrl_accept_anytime,
   rsnd_dvc_volume_update,
   &dvc->volume, channels,
   0x00800000 - 1);
 if (ret < 0)
  return ret;


 ret = rsnd_kctrl_new_m(mod, io, rtd,
   is_play ?
   "DVC Out Mute Switch" : "DVC In Mute Switch",
   rsnd_kctrl_accept_anytime,
   rsnd_dvc_volume_update,
   &dvc->mute, channels,
   1);
 if (ret < 0)
  return ret;


 ret = rsnd_kctrl_new_s(mod, io, rtd,
   is_play ?
   "DVC Out Ramp Switch" : "DVC In Ramp Switch",
   rsnd_kctrl_accept_anytime,
   rsnd_dvc_volume_update,
   &dvc->ren, 1);
 if (ret < 0)
  return ret;

 ret = rsnd_kctrl_new_e(mod, io, rtd,
   is_play ?
   "DVC Out Ramp Up Rate" : "DVC In Ramp Up Rate",
   rsnd_kctrl_accept_anytime,
   rsnd_dvc_volume_update,
   &dvc->rup,
   volume_ramp_rate,
   VOLUME_RAMP_MAX_DVC);
 if (ret < 0)
  return ret;

 ret = rsnd_kctrl_new_e(mod, io, rtd,
   is_play ?
   "DVC Out Ramp Down Rate" : "DVC In Ramp Down Rate",
   rsnd_kctrl_accept_anytime,
   rsnd_dvc_volume_update,
   &dvc->rdown,
   volume_ramp_rate,
   VOLUME_RAMP_MAX_DVC);

 if (ret < 0)
  return ret;

 return 0;
}
