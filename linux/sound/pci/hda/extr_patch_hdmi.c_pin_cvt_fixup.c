
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hdmi_spec_per_pin {int dummy; } ;
struct TYPE_2__ {int (* pin_cvt_fixup ) (struct hda_codec*,struct hdmi_spec_per_pin*,int ) ;} ;
struct hdmi_spec {TYPE_1__ ops; } ;
struct hda_codec {struct hdmi_spec* spec; } ;
typedef int hda_nid_t ;


 int stub1 (struct hda_codec*,struct hdmi_spec_per_pin*,int ) ;

__attribute__((used)) static void pin_cvt_fixup(struct hda_codec *codec,
     struct hdmi_spec_per_pin *per_pin,
     hda_nid_t cvt_nid)
{
 struct hdmi_spec *spec = codec->spec;

 if (spec->ops.pin_cvt_fixup)
  spec->ops.pin_cvt_fixup(codec, per_pin, cvt_nid);
}
