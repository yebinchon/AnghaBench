
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;
struct hda_multi_out {int dig_out_nid; } ;
struct hda_codec {int spdif_mutex; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int setup_dig_out_stream (struct hda_codec*,int ,unsigned int,unsigned int) ;

int snd_hda_multi_out_dig_prepare(struct hda_codec *codec,
      struct hda_multi_out *mout,
      unsigned int stream_tag,
      unsigned int format,
      struct snd_pcm_substream *substream)
{
 mutex_lock(&codec->spdif_mutex);
 setup_dig_out_stream(codec, mout->dig_out_nid, stream_tag, format);
 mutex_unlock(&codec->spdif_mutex);
 return 0;
}
