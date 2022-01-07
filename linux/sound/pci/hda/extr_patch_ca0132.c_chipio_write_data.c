
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {struct ca0132_spec* spec; } ;
struct ca0132_spec {int curr_chip_addx; } ;


 int EIO ;
 int VENDOR_CHIPIO_DATA_HIGH ;
 int VENDOR_CHIPIO_DATA_LOW ;
 int chipio_send (struct hda_codec*,int ,unsigned int) ;

__attribute__((used)) static int chipio_write_data(struct hda_codec *codec, unsigned int data)
{
 struct ca0132_spec *spec = codec->spec;
 int res;


 res = chipio_send(codec, VENDOR_CHIPIO_DATA_LOW, data & 0xffff);

 if (res != -EIO) {

  res = chipio_send(codec, VENDOR_CHIPIO_DATA_HIGH,
      data >> 16);
 }



 spec->curr_chip_addx = (res != -EIO) ?
     (spec->curr_chip_addx + 4) : ~0U;
 return res;
}
