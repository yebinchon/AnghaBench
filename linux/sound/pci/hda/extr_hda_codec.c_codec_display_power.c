
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hda_codec {int addr; TYPE_1__* bus; scalar_t__ display_power_control; } ;
struct TYPE_2__ {int core; } ;


 int snd_hdac_display_power (int *,int ,int) ;

__attribute__((used)) static void codec_display_power(struct hda_codec *codec, bool enable)
{
 if (codec->display_power_control)
  snd_hdac_display_power(&codec->bus->core, codec->addr, enable);
}
