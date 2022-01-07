
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int hw; void* private_data; } ;
struct TYPE_3__ {int (* open ) (struct snd_ice1712*,struct snd_pcm_substream*) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;
struct snd_ice1712 {TYPE_2__ spdif; scalar_t__ force_pdma4; struct snd_pcm_substream* playback_con_substream; } ;


 int SNDRV_PCM_HW_PARAM_BUFFER_BYTES ;
 int SNDRV_PCM_HW_PARAM_PERIOD_BYTES ;
 int VT1724_BUFFER_ALIGN ;
 int constrain_rate_if_locked (struct snd_pcm_substream*) ;
 int set_rate_constraints (struct snd_ice1712*,struct snd_pcm_substream*) ;
 int snd_pcm_hw_constraint_msbits (struct snd_pcm_runtime*,int ,int,int) ;
 int snd_pcm_hw_constraint_step (struct snd_pcm_runtime*,int ,int ,int ) ;
 int snd_pcm_set_sync (struct snd_pcm_substream*) ;
 struct snd_ice1712* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int snd_vt1724_2ch_stereo ;
 int snd_vt1724_spdif ;
 int stub1 (struct snd_ice1712*,struct snd_pcm_substream*) ;
 int vt1724_playback_spdif_reg ;

__attribute__((used)) static int snd_vt1724_playback_spdif_open(struct snd_pcm_substream *substream)
{
 struct snd_ice1712 *ice = snd_pcm_substream_chip(substream);
 struct snd_pcm_runtime *runtime = substream->runtime;

 runtime->private_data = (void *)&vt1724_playback_spdif_reg;
 ice->playback_con_substream = substream;
 if (ice->force_pdma4) {
  runtime->hw = snd_vt1724_2ch_stereo;
  set_rate_constraints(ice, substream);
 } else
  runtime->hw = snd_vt1724_spdif;
 snd_pcm_set_sync(substream);
 snd_pcm_hw_constraint_msbits(runtime, 0, 32, 24);
 snd_pcm_hw_constraint_step(runtime, 0, SNDRV_PCM_HW_PARAM_PERIOD_BYTES,
       VT1724_BUFFER_ALIGN);
 snd_pcm_hw_constraint_step(runtime, 0, SNDRV_PCM_HW_PARAM_BUFFER_BYTES,
       VT1724_BUFFER_ALIGN);
 constrain_rate_if_locked(substream);
 if (ice->spdif.ops.open)
  ice->spdif.ops.open(ice, substream);
 return 0;
}
