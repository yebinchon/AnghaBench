
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int * unsol_event; } ;
struct hda_codec {TYPE_3__ patch_ops; int probe_id; TYPE_2__* bus; } ;
struct TYPE_4__ {int audio_component; } ;
struct TYPE_5__ {TYPE_1__ core; } ;


 int ENODEV ;
 int HDA_CODEC_ID_SKIP_PROBE ;
 int alloc_generic_hdmi (struct hda_codec*) ;
 int codec_info (struct hda_codec*,char*) ;

__attribute__((used)) static int alloc_intel_hdmi(struct hda_codec *codec)
{
 int err;


 if (!codec->bus->core.audio_component) {
  codec_info(codec, "No i915 binding for Intel HDMI/DP codec\n");

  codec->probe_id = HDA_CODEC_ID_SKIP_PROBE;
  return -ENODEV;
 }

 err = alloc_generic_hdmi(codec);
 if (err < 0)
  return err;

 codec->patch_ops.unsol_event = ((void*)0);
 return 0;
}
