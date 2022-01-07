
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdmi_spec_per_pin {int work; int lock; struct hda_codec* codec; } ;
struct hdmi_spec {int num_pins; } ;
struct hda_codec {struct hdmi_spec* spec; } ;


 int INIT_DELAYED_WORK (int *,int ) ;
 int eld_proc_new (struct hdmi_spec_per_pin*,int) ;
 struct hdmi_spec_per_pin* get_pin (struct hdmi_spec*,int) ;
 int hdmi_repoll_eld ;
 int mutex_init (int *) ;

__attribute__((used)) static int generic_hdmi_init_per_pins(struct hda_codec *codec)
{
 struct hdmi_spec *spec = codec->spec;
 int pin_idx;

 for (pin_idx = 0; pin_idx < spec->num_pins; pin_idx++) {
  struct hdmi_spec_per_pin *per_pin = get_pin(spec, pin_idx);

  per_pin->codec = codec;
  mutex_init(&per_pin->lock);
  INIT_DELAYED_WORK(&per_pin->work, hdmi_repoll_eld);
  eld_proc_new(per_pin, pin_idx);
 }
 return 0;
}
