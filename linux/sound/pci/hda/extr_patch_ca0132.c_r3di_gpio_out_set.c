
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int afg; } ;
struct hda_codec {TYPE_1__ core; } ;
typedef enum r3di_out_select { ____Placeholder_r3di_out_select } r3di_out_select ;


 int AC_VERB_GET_GPIO_DATA ;
 int AC_VERB_SET_GPIO_DATA ;


 int R3DI_OUT_SELECT_BIT ;
 unsigned int snd_hda_codec_read (struct hda_codec*,int,int ,int ,int ) ;
 int snd_hda_codec_write (struct hda_codec*,int ,int ,int ,unsigned int) ;

__attribute__((used)) static void r3di_gpio_out_set(struct hda_codec *codec,
  enum r3di_out_select cur_out)
{
 unsigned int cur_gpio;


 cur_gpio = snd_hda_codec_read(codec, 0x01, 0, AC_VERB_GET_GPIO_DATA, 0);

 switch (cur_out) {
 case 129:
  cur_gpio &= ~(1 << R3DI_OUT_SELECT_BIT);
  break;
 case 128:
  cur_gpio |= (1 << R3DI_OUT_SELECT_BIT);
  break;
 }
 snd_hda_codec_write(codec, codec->core.afg, 0,
       AC_VERB_SET_GPIO_DATA, cur_gpio);
}
