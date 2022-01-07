
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ afg; } ;
struct hda_codec {TYPE_1__ core; struct alc_spec* spec; } ;
struct alc_spec {scalar_t__ gpio_data; } ;
typedef scalar_t__ hda_nid_t ;


 unsigned int AC_PWRST_D0 ;
 unsigned int AC_PWRST_D3 ;

__attribute__((used)) static unsigned int gpio_led_power_filter(struct hda_codec *codec,
       hda_nid_t nid,
       unsigned int power_state)
{
 struct alc_spec *spec = codec->spec;
 if (nid == codec->core.afg && power_state == AC_PWRST_D3 && spec->gpio_data)
  return AC_PWRST_D0;
 return power_state;
}
