
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct snd_pcm_substream {int dummy; } ;
struct hda_pcm_stream {int dummy; } ;
struct azx_pcm {int codec; } ;
struct azx_dev {int dummy; } ;
struct TYPE_3__ {scalar_t__ prepared; } ;


 TYPE_1__* azx_stream (struct azx_dev*) ;
 int dsp_is_locked (struct azx_dev*) ;
 int dsp_lock (struct azx_dev*) ;
 int dsp_unlock (struct azx_dev*) ;
 struct azx_dev* get_azx_dev (struct snd_pcm_substream*) ;
 int snd_hda_codec_cleanup (int ,struct hda_pcm_stream*,struct snd_pcm_substream*) ;
 int snd_hdac_stream_cleanup (TYPE_1__*) ;
 int snd_pcm_lib_free_pages (struct snd_pcm_substream*) ;
 struct azx_pcm* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 struct hda_pcm_stream* to_hda_pcm_stream (struct snd_pcm_substream*) ;

__attribute__((used)) static int azx_pcm_hw_free(struct snd_pcm_substream *substream)
{
 struct azx_pcm *apcm = snd_pcm_substream_chip(substream);
 struct azx_dev *azx_dev = get_azx_dev(substream);
 struct hda_pcm_stream *hinfo = to_hda_pcm_stream(substream);
 int err;


 dsp_lock(azx_dev);
 if (!dsp_is_locked(azx_dev))
  snd_hdac_stream_cleanup(azx_stream(azx_dev));

 snd_hda_codec_cleanup(apcm->codec, hinfo, substream);

 err = snd_pcm_lib_free_pages(substream);
 azx_stream(azx_dev)->prepared = 0;
 dsp_unlock(azx_dev);
 return err;
}
