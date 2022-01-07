
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ mfg; scalar_t__ afg; } ;
struct hda_codec {int init_pins; TYPE_1__ core; int wcaps; } ;
typedef scalar_t__ hda_nid_t ;


 int kfree (int ) ;
 int read_pin_defaults (struct hda_codec*) ;
 int read_widget_caps (struct hda_codec*,scalar_t__) ;
 int snd_array_free (int *) ;
 int snd_hdac_refresh_widgets (TYPE_1__*) ;

int snd_hda_codec_update_widgets(struct hda_codec *codec)
{
 hda_nid_t fg;
 int err;

 err = snd_hdac_refresh_widgets(&codec->core);
 if (err < 0)
  return err;




 kfree(codec->wcaps);
 fg = codec->core.afg ? codec->core.afg : codec->core.mfg;
 err = read_widget_caps(codec, fg);
 if (err < 0)
  return err;

 snd_array_free(&codec->init_pins);
 err = read_pin_defaults(codec);

 return err;
}
