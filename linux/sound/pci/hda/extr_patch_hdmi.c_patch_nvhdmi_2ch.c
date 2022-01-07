
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int formats; int maxbps; int rates; } ;
struct hdmi_spec {TYPE_2__ pcm_playback; } ;
struct TYPE_3__ {int init; } ;
struct hda_codec {struct hdmi_spec* spec; TYPE_1__ patch_ops; } ;


 int SUPPORTED_FORMATS ;
 int SUPPORTED_MAXBPS ;
 int SUPPORTED_RATES ;
 int nvhdmi_7x_init_2ch ;
 int nvhdmi_master_con_nid_7x ;
 int nvhdmi_master_pin_nid_7x ;
 int patch_simple_hdmi (struct hda_codec*,int ,int ) ;

__attribute__((used)) static int patch_nvhdmi_2ch(struct hda_codec *codec)
{
 struct hdmi_spec *spec;
 int err = patch_simple_hdmi(codec, nvhdmi_master_con_nid_7x,
        nvhdmi_master_pin_nid_7x);
 if (err < 0)
  return err;

 codec->patch_ops.init = nvhdmi_7x_init_2ch;

 spec = codec->spec;
 spec->pcm_playback.rates = SUPPORTED_RATES;
 spec->pcm_playback.maxbps = SUPPORTED_MAXBPS;
 spec->pcm_playback.formats = SUPPORTED_FORMATS;
 return 0;
}
