
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int max_channels; } ;
struct hdmi_spec {int pcm_playback; TYPE_1__ multiout; } ;
struct TYPE_4__ {int build_controls; int build_pcms; int init; } ;
struct hda_codec {TYPE_2__ patch_ops; struct hdmi_spec* spec; } ;


 int nvhdmi_7x_8ch_build_controls ;
 int nvhdmi_7x_8ch_build_pcms ;
 int nvhdmi_7x_init_8ch ;
 int nvhdmi_8ch_7x_set_info_frame_parameters (struct hda_codec*,int) ;
 int nvhdmi_pcm_playback_8ch_7x ;
 int patch_nvhdmi_2ch (struct hda_codec*) ;

__attribute__((used)) static int patch_nvhdmi_8ch_7x(struct hda_codec *codec)
{
 struct hdmi_spec *spec;
 int err = patch_nvhdmi_2ch(codec);
 if (err < 0)
  return err;
 spec = codec->spec;
 spec->multiout.max_channels = 8;
 spec->pcm_playback = nvhdmi_pcm_playback_8ch_7x;
 codec->patch_ops.init = nvhdmi_7x_init_8ch;
 codec->patch_ops.build_pcms = nvhdmi_7x_8ch_build_pcms;
 codec->patch_ops.build_controls = nvhdmi_7x_8ch_build_controls;



 nvhdmi_8ch_7x_set_info_frame_parameters(codec, 8);

 return 0;
}
