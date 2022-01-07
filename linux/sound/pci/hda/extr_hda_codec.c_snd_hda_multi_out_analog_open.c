
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct TYPE_2__ {int rates; int formats; int channels_max; } ;
struct snd_pcm_runtime {TYPE_1__ hw; } ;
struct hda_pcm_stream {int rates; int formats; scalar_t__ maxbps; } ;
struct hda_multi_out {int analog_rates; int analog_formats; scalar_t__ analog_maxbps; int spdif_rates; int spdif_formats; scalar_t__ spdif_maxbps; scalar_t__ share_spdif; scalar_t__ dig_out_nid; int max_channels; } ;
struct hda_codec {int spdif_mutex; } ;


 int SNDRV_PCM_HW_PARAM_CHANNELS ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int snd_hda_query_supported_pcm (struct hda_codec*,scalar_t__,int*,int*,scalar_t__*) ;
 int snd_pcm_hw_constraint_step (struct snd_pcm_runtime*,int ,int ,int) ;

int snd_hda_multi_out_analog_open(struct hda_codec *codec,
      struct hda_multi_out *mout,
      struct snd_pcm_substream *substream,
      struct hda_pcm_stream *hinfo)
{
 struct snd_pcm_runtime *runtime = substream->runtime;
 runtime->hw.channels_max = mout->max_channels;
 if (mout->dig_out_nid) {
  if (!mout->analog_rates) {
   mout->analog_rates = hinfo->rates;
   mout->analog_formats = hinfo->formats;
   mout->analog_maxbps = hinfo->maxbps;
  } else {
   runtime->hw.rates = mout->analog_rates;
   runtime->hw.formats = mout->analog_formats;
   hinfo->maxbps = mout->analog_maxbps;
  }
  if (!mout->spdif_rates) {
   snd_hda_query_supported_pcm(codec, mout->dig_out_nid,
          &mout->spdif_rates,
          &mout->spdif_formats,
          &mout->spdif_maxbps);
  }
  mutex_lock(&codec->spdif_mutex);
  if (mout->share_spdif) {
   if ((runtime->hw.rates & mout->spdif_rates) &&
       (runtime->hw.formats & mout->spdif_formats)) {
    runtime->hw.rates &= mout->spdif_rates;
    runtime->hw.formats &= mout->spdif_formats;
    if (mout->spdif_maxbps < hinfo->maxbps)
     hinfo->maxbps = mout->spdif_maxbps;
   } else {
    mout->share_spdif = 0;

   }
  }
  mutex_unlock(&codec->spdif_mutex);
 }
 return snd_pcm_hw_constraint_step(substream->runtime, 0,
       SNDRV_PCM_HW_PARAM_CHANNELS, 2);
}
