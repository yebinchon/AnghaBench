
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdmi_spec {int dummy; } ;
struct hda_codec {struct hdmi_spec* spec; } ;


 int hdmi_array_free (struct hdmi_spec*) ;
 int kfree (struct hdmi_spec*) ;

__attribute__((used)) static void simple_playback_free(struct hda_codec *codec)
{
 struct hdmi_spec *spec = codec->spec;

 hdmi_array_free(spec);
 kfree(spec);
}
