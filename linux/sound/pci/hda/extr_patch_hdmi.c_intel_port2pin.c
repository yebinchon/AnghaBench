
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdmi_spec {int port_num; int* port_map; } ;
struct hda_codec {struct hdmi_spec* spec; } ;


 int intel_base_nid (struct hda_codec*) ;

__attribute__((used)) static int intel_port2pin(struct hda_codec *codec, int port)
{
 struct hdmi_spec *spec = codec->spec;

 if (!spec->port_num) {

  if (port < 1 || port > 3)
   return 0;

  return port + intel_base_nid(codec) - 1;
 }

 if (port < 1 || port > spec->port_num)
  return 0;
 return spec->port_map[port - 1];
}
