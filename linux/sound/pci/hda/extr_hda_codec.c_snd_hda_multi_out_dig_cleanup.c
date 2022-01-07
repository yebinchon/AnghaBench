
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_multi_out {int dig_out_nid; } ;
struct hda_codec {int spdif_mutex; } ;


 int cleanup_dig_out_stream (struct hda_codec*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int snd_hda_multi_out_dig_cleanup(struct hda_codec *codec,
      struct hda_multi_out *mout)
{
 mutex_lock(&codec->spdif_mutex);
 cleanup_dig_out_stream(codec, mout->dig_out_nid);
 mutex_unlock(&codec->spdif_mutex);
 return 0;
}
