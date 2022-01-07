
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;
typedef int hda_nid_t ;


 int PTR_ERR_OR_ZERO (int ) ;
 int snd_hda_jack_detect_enable_callback (struct hda_codec*,int ,int *) ;

int snd_hda_jack_detect_enable(struct hda_codec *codec, hda_nid_t nid)
{
 return PTR_ERR_OR_ZERO(snd_hda_jack_detect_enable_callback(codec, nid, ((void*)0)));
}
