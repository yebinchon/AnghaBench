
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;


 int ca0113_mmio_gpio_set (struct hda_codec*,int,long) ;

__attribute__((used)) static int zxr_headphone_gain_set(struct hda_codec *codec, long val)
{
 ca0113_mmio_gpio_set(codec, 1, val);

 return 0;
}
