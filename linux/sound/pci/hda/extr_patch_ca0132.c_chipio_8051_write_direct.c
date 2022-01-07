
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;


 unsigned int VENDOR_CHIPIO_8051_WRITE_DIRECT ;
 int WIDGET_CHIP_CTRL ;
 int snd_hda_codec_write (struct hda_codec*,int ,int ,unsigned int,unsigned int) ;

__attribute__((used)) static void chipio_8051_write_direct(struct hda_codec *codec,
  unsigned int addr, unsigned int data)
{
 unsigned int verb;

 verb = VENDOR_CHIPIO_8051_WRITE_DIRECT | data;
 snd_hda_codec_write(codec, WIDGET_CHIP_CTRL, 0, verb, addr);
}
