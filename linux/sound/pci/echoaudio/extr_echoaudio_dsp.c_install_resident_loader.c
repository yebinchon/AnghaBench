
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct firmware {scalar_t__ data; } ;
struct echoaudio {scalar_t__ device_id; TYPE_1__* card; } ;
struct TYPE_2__ {int dev; } ;


 int CHI32_CONTROL_REG ;
 int CHI32_STATUS_REG ;
 int CHI32_STATUS_REG_HF5 ;
 scalar_t__ DEVICE_ID_56361 ;
 int EIO ;
 int FW_361_LOADER ;
 int dev_dbg (int ,char*,...) ;
 int dev_err (int ,char*) ;
 int dev_warn (int ,char*) ;
 int free_firmware (struct firmware const*,struct echoaudio*) ;
 int get_dsp_register (struct echoaudio*,int ) ;
 int get_firmware (struct firmware const**,struct echoaudio*,int ) ;
 int set_dsp_register (struct echoaudio*,int ,int) ;
 int udelay (int) ;
 scalar_t__ write_dsp (struct echoaudio*,int) ;

__attribute__((used)) static int install_resident_loader(struct echoaudio *chip)
{
 u32 address;
 int index, words, i;
 u16 *code;
 u32 status;
 const struct firmware *fw;



 if (chip->device_id != DEVICE_ID_56361)
  return 0;



 status = get_dsp_register(chip, CHI32_STATUS_REG);
 if (status & CHI32_STATUS_REG_HF5) {
  dev_dbg(chip->card->dev,
   "Resident loader already installed; status is 0x%x\n",
    status);
  return 0;
 }

 i = get_firmware(&fw, chip, FW_361_LOADER);
 if (i < 0) {
  dev_warn(chip->card->dev, "Firmware not found !\n");
  return i;
 }
 set_dsp_register(chip, CHI32_CONTROL_REG,
    get_dsp_register(chip, CHI32_CONTROL_REG) | 0x900);

 code = (u16 *)fw->data;




 index = code[0];


 index += 3;


 words = code[index++];


 address = ((u32)code[index] << 16) + code[index + 1];
 index += 2;


 if (write_dsp(chip, words)) {
  dev_err(chip->card->dev,
   "install_resident_loader: Failed to write word count!\n");
  goto irl_error;
 }

 if (write_dsp(chip, address)) {
  dev_err(chip->card->dev,
   "install_resident_loader: Failed to write DSP address!\n");
  goto irl_error;
 }

 for (i = 0; i < words; i++) {
  u32 data;

  data = ((u32)code[index] << 16) + code[index + 1];
  if (write_dsp(chip, data)) {
   dev_err(chip->card->dev,
    "install_resident_loader: Failed to write DSP code\n");
   goto irl_error;
  }
  index += 2;
 }


 for (i = 0; i < 200; i++) {
  udelay(50);
  status = get_dsp_register(chip, CHI32_STATUS_REG);
  if (status & CHI32_STATUS_REG_HF5)
   break;
 }

 if (i == 200) {
  dev_err(chip->card->dev, "Resident loader failed to set HF5\n");
  goto irl_error;
 }

 dev_dbg(chip->card->dev, "Resident loader successfully installed\n");
 free_firmware(fw, chip);
 return 0;

irl_error:
 free_firmware(fw, chip);
 return -EIO;
}
