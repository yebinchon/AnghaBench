
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_multi_out {int num_dacs; scalar_t__ dig_out_used; scalar_t__ dig_out_nid; scalar_t__ const* extra_out_nid; scalar_t__ const* hp_out_nid; scalar_t__ const hp_nid; scalar_t__* dac_nids; } ;
struct hda_codec {int spdif_mutex; } ;
typedef scalar_t__ hda_nid_t ;


 int ARRAY_SIZE (scalar_t__ const*) ;
 scalar_t__ HDA_DIG_ANALOG_DUP ;
 int cleanup_dig_out_stream (struct hda_codec*,scalar_t__) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int snd_hda_codec_cleanup_stream (struct hda_codec*,scalar_t__ const) ;

int snd_hda_multi_out_analog_cleanup(struct hda_codec *codec,
         struct hda_multi_out *mout)
{
 const hda_nid_t *nids = mout->dac_nids;
 int i;

 for (i = 0; i < mout->num_dacs; i++)
  snd_hda_codec_cleanup_stream(codec, nids[i]);
 if (mout->hp_nid)
  snd_hda_codec_cleanup_stream(codec, mout->hp_nid);
 for (i = 0; i < ARRAY_SIZE(mout->hp_out_nid); i++)
  if (mout->hp_out_nid[i])
   snd_hda_codec_cleanup_stream(codec,
           mout->hp_out_nid[i]);
 for (i = 0; i < ARRAY_SIZE(mout->extra_out_nid); i++)
  if (mout->extra_out_nid[i])
   snd_hda_codec_cleanup_stream(codec,
           mout->extra_out_nid[i]);
 mutex_lock(&codec->spdif_mutex);
 if (mout->dig_out_nid && mout->dig_out_used == HDA_DIG_ANALOG_DUP) {
  cleanup_dig_out_stream(codec, mout->dig_out_nid);
  mout->dig_out_used = 0;
 }
 mutex_unlock(&codec->spdif_mutex);
 return 0;
}
