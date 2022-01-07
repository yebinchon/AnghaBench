
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdmi_spec {int port_num; int* port_map; } ;
struct hda_codec {struct hdmi_spec* spec; } ;


 scalar_t__ WARN_ON (int) ;
 int codec_info (struct hda_codec*,char*,int) ;
 int intel_base_nid (struct hda_codec*) ;

__attribute__((used)) static int intel_pin2port(void *audio_ptr, int pin_nid)
{
 struct hda_codec *codec = audio_ptr;
 struct hdmi_spec *spec = codec->spec;
 int base_nid, i;

 if (!spec->port_num) {
  base_nid = intel_base_nid(codec);
  if (WARN_ON(pin_nid < base_nid || pin_nid >= base_nid + 3))
   return -1;
  return pin_nid - base_nid + 1;
 }





 for (i = 0; i < spec->port_num; i++) {
  if (pin_nid == spec->port_map[i])
   return i + 1;
 }


 codec_info(codec, "Can't find the HDMI/DP port for pin %d\n", pin_nid);
 return -1;
}
