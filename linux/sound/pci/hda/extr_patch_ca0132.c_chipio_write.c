
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {struct ca0132_spec* spec; } ;
struct ca0132_spec {int chipio_mutex; } ;


 int chipio_write_address (struct hda_codec*,unsigned int) ;
 int chipio_write_data (struct hda_codec*,unsigned int const) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int chipio_write(struct hda_codec *codec,
  unsigned int chip_addx, const unsigned int data)
{
 struct ca0132_spec *spec = codec->spec;
 int err;

 mutex_lock(&spec->chipio_mutex);


 err = chipio_write_address(codec, chip_addx);
 if (err < 0)
  goto exit;

 err = chipio_write_data(codec, data);
 if (err < 0)
  goto exit;

exit:
 mutex_unlock(&spec->chipio_mutex);
 return err;
}
