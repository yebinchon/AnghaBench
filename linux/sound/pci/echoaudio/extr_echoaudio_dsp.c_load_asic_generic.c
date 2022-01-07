
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
typedef size_t u32 ;
struct firmware {size_t size; scalar_t__ data; } ;
struct echoaudio {TYPE_1__* card; } ;
struct TYPE_2__ {int dev; } ;


 int EIO ;
 int dev_err (int ,char*) ;
 int dev_warn (int ,char*) ;
 int free_firmware (struct firmware const*,struct echoaudio*) ;
 int get_firmware (struct firmware const**,struct echoaudio*,short) ;
 scalar_t__ write_dsp (struct echoaudio*,size_t) ;

__attribute__((used)) static int load_asic_generic(struct echoaudio *chip, u32 cmd, short asic)
{
 const struct firmware *fw;
 int err;
 u32 i, size;
 u8 *code;

 err = get_firmware(&fw, chip, asic);
 if (err < 0) {
  dev_warn(chip->card->dev, "Firmware not found !\n");
  return err;
 }

 code = (u8 *)fw->data;
 size = fw->size;


 if (write_dsp(chip, cmd) < 0)
  goto la_error;


 if (write_dsp(chip, size) < 0)
  goto la_error;

 for (i = 0; i < size; i++) {
  if (write_dsp(chip, code[i]) < 0)
   goto la_error;
 }

 free_firmware(fw, chip);
 return 0;

la_error:
 dev_err(chip->card->dev, "failed on write_dsp\n");
 free_firmware(fw, chip);
 return -EIO;
}
