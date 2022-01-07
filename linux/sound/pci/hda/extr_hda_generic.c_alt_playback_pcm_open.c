
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;
struct hda_pcm_stream {int dummy; } ;
struct hda_gen_spec {int active_streams; int pcm_mutex; int indep_hp_enabled; scalar_t__ indep_hp; } ;
struct hda_codec {struct hda_gen_spec* spec; } ;


 int EBUSY ;
 int HDA_GEN_PCM_ACT_OPEN ;
 int STREAM_INDEP_HP ;
 int call_pcm_playback_hook (struct hda_pcm_stream*,struct hda_codec*,struct snd_pcm_substream*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int alt_playback_pcm_open(struct hda_pcm_stream *hinfo,
     struct hda_codec *codec,
     struct snd_pcm_substream *substream)
{
 struct hda_gen_spec *spec = codec->spec;
 int err = 0;

 mutex_lock(&spec->pcm_mutex);
 if (spec->indep_hp && !spec->indep_hp_enabled)
  err = -EBUSY;
 else
  spec->active_streams |= 1 << STREAM_INDEP_HP;
 call_pcm_playback_hook(hinfo, codec, substream,
          HDA_GEN_PCM_ACT_OPEN);
 mutex_unlock(&spec->pcm_mutex);
 return err;
}
