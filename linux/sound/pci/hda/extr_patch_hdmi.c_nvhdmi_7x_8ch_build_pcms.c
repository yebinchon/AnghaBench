
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdmi_spec {int dummy; } ;
struct hda_pcm {int own_chmap; } ;
struct hda_codec {struct hdmi_spec* spec; } ;


 struct hda_pcm* get_pcm_rec (struct hdmi_spec*,int ) ;
 int simple_playback_build_pcms (struct hda_codec*) ;

__attribute__((used)) static int nvhdmi_7x_8ch_build_pcms(struct hda_codec *codec)
{
 struct hdmi_spec *spec = codec->spec;
 int err = simple_playback_build_pcms(codec);
 if (!err) {
  struct hda_pcm *info = get_pcm_rec(spec, 0);
  info->own_chmap = 1;
 }
 return err;
}
