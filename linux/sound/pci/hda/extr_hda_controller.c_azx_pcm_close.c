
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {int dummy; } ;
struct TYPE_2__ {int (* close ) (struct hda_pcm_stream*,int ,struct snd_pcm_substream*) ;} ;
struct hda_pcm_stream {TYPE_1__ ops; } ;
struct azx_pcm {int info; int codec; struct azx* chip; } ;
struct azx_dev {int dummy; } ;
struct azx {int open_mutex; } ;


 int azx_release_device (struct azx_dev*) ;
 struct azx_dev* get_azx_dev (struct snd_pcm_substream*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int snd_hda_codec_pcm_put (int ) ;
 int snd_hda_power_down (int ) ;
 struct azx_pcm* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int stub1 (struct hda_pcm_stream*,int ,struct snd_pcm_substream*) ;
 struct hda_pcm_stream* to_hda_pcm_stream (struct snd_pcm_substream*) ;
 int trace_azx_pcm_close (struct azx*,struct azx_dev*) ;

__attribute__((used)) static int azx_pcm_close(struct snd_pcm_substream *substream)
{
 struct azx_pcm *apcm = snd_pcm_substream_chip(substream);
 struct hda_pcm_stream *hinfo = to_hda_pcm_stream(substream);
 struct azx *chip = apcm->chip;
 struct azx_dev *azx_dev = get_azx_dev(substream);

 trace_azx_pcm_close(chip, azx_dev);
 mutex_lock(&chip->open_mutex);
 azx_release_device(azx_dev);
 if (hinfo->ops.close)
  hinfo->ops.close(hinfo, apcm->codec, substream);
 snd_hda_power_down(apcm->codec);
 mutex_unlock(&chip->open_mutex);
 snd_hda_codec_pcm_put(apcm->info);
 return 0;
}
