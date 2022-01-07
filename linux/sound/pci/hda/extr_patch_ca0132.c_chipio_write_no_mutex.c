
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;


 int chipio_write_address (struct hda_codec*,unsigned int) ;
 int chipio_write_data (struct hda_codec*,unsigned int const) ;

__attribute__((used)) static int chipio_write_no_mutex(struct hda_codec *codec,
  unsigned int chip_addx, const unsigned int data)
{
 int err;



 err = chipio_write_address(codec, chip_addx);
 if (err < 0)
  goto exit;

 err = chipio_write_data(codec, data);
 if (err < 0)
  goto exit;

exit:
 return err;
}
