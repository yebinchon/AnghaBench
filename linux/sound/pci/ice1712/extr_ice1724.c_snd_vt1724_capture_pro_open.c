
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int hw; void* private_data; } ;
struct snd_ice1712 {int (* pro_open ) (struct snd_ice1712*,struct snd_pcm_substream*) ;struct snd_pcm_substream* capture_pro_substream; } ;


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
 int stub1 (struct snd_ice1712*,struct snd_pcm_substream*) ;
 int vt1724_capture_pro_reg ;

__attribute__((used)) static int snd_vt1724_capture_pro_open(struct snd_pcm_substream *substream)
{
 struct snd_ice1712 *ice = snd_pcm_substream_chip(substream);
 struct snd_pcm_runtime *runtime = substream->runtime;

 runtime->private_data = (void *)&vt1724_capture_pro_reg;
 ice->capture_pro_substream = substream;
 runtime->hw = snd_vt1724_2ch_stereo;
 snd_pcm_set_sync(substream);
 snd_pcm_hw_constraint_msbits(runtime, 0, 32, 24);
 set_rate_constraints(ice, substream);
 snd_pcm_hw_constraint_step(runtime, 0, SNDRV_PCM_HW_PARAM_PERIOD_BYTES,
       VT1724_BUFFER_ALIGN);
 snd_pcm_hw_constraint_step(runtime, 0, SNDRV_PCM_HW_PARAM_BUFFER_BYTES,
       VT1724_BUFFER_ALIGN);
 constrain_rate_if_locked(substream);
 if (ice->pro_open)
  ice->pro_open(ice, substream);
 return 0;
}
