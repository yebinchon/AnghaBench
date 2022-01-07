
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct echoaudio {int* dsp_code; int bad_board; int asic_loaded; int comm_page_phys; TYPE_1__* card; } ;
struct TYPE_2__ {int dev; } ;


 int CHI32_CONTROL_REG ;
 int CHI32_STATUS_REG ;
 int CHI32_STATUS_REG_HF3 ;
 int CHI32_STATUS_REG_HF4 ;
 int DSP_FNC_SET_COMMPAGE_ADDR ;
 int DSP_VC_RESET ;
 int EIO ;
 int dev_dbg (int ,char*) ;
 int dev_err (int ,char*) ;
 int dev_warn (int ,char*) ;
 int get_dsp_register (struct echoaudio*,int ) ;
 int install_resident_loader (struct echoaudio*) ;
 scalar_t__ read_sn (struct echoaudio*) ;
 scalar_t__ send_vector (struct echoaudio*,int ) ;
 int set_dsp_register (struct echoaudio*,int ,int) ;
 int udelay (int) ;
 scalar_t__ write_dsp (struct echoaudio*,int) ;

__attribute__((used)) static int load_dsp(struct echoaudio *chip, u16 *code)
{
 u32 address, data;
 int index, words, i;

 if (chip->dsp_code == code) {
  dev_warn(chip->card->dev, "DSP is already loaded!\n");
  return 0;
 }
 chip->bad_board = 1;
 chip->dsp_code = ((void*)0);
 chip->asic_loaded = 0;

 dev_dbg(chip->card->dev, "load_dsp: Set bad_board to true\n");
 if (send_vector(chip, DSP_VC_RESET) < 0) {
  dev_err(chip->card->dev,
   "LoadDsp: send_vector DSP_VC_RESET failed, Critical Failure\n");
  return -EIO;
 }

 udelay(10);


 for (i = 0; i < 1000; i++) {
  if (get_dsp_register(chip, CHI32_STATUS_REG) &
      CHI32_STATUS_REG_HF3)
   break;
  udelay(10);
 }

 if (i == 1000) {
  dev_err(chip->card->dev,
   "load_dsp: Timeout waiting for CHI32_STATUS_REG_HF3\n");
  return -EIO;
 }


 set_dsp_register(chip, CHI32_CONTROL_REG,
    get_dsp_register(chip, CHI32_CONTROL_REG) | 0x900);



 index = code[0];
 for (;;) {
  int block_type, mem_type;


  index++;


  block_type = code[index];
  if (block_type == 4)
   break;

  index++;


  mem_type = code[index++];


  words = code[index++];
  if (words == 0)
   break;


  address = ((u32)code[index] << 16) + code[index + 1];
  index += 2;

  if (write_dsp(chip, words) < 0) {
   dev_err(chip->card->dev,
    "load_dsp: failed to write number of DSP words\n");
   return -EIO;
  }
  if (write_dsp(chip, address) < 0) {
   dev_err(chip->card->dev,
    "load_dsp: failed to write DSP address\n");
   return -EIO;
  }
  if (write_dsp(chip, mem_type) < 0) {
   dev_err(chip->card->dev,
    "load_dsp: failed to write DSP memory type\n");
   return -EIO;
  }

  for (i = 0; i < words; i++, index+=2) {
   data = ((u32)code[index] << 16) + code[index + 1];
   if (write_dsp(chip, data) < 0) {
    dev_err(chip->card->dev,
     "load_dsp: failed to write DSP data\n");
    return -EIO;
   }
  }
 }

 if (write_dsp(chip, 0) < 0) {
  dev_err(chip->card->dev,
   "load_dsp: Failed to write final zero\n");
  return -EIO;
 }
 udelay(10);

 for (i = 0; i < 5000; i++) {

  if (get_dsp_register(chip, CHI32_STATUS_REG) &
      CHI32_STATUS_REG_HF4) {
   set_dsp_register(chip, CHI32_CONTROL_REG,
      get_dsp_register(chip, CHI32_CONTROL_REG) & ~0x1b00);

   if (write_dsp(chip, DSP_FNC_SET_COMMPAGE_ADDR) < 0) {
    dev_err(chip->card->dev,
     "load_dsp: Failed to write DSP_FNC_SET_COMMPAGE_ADDR\n");
    return -EIO;
   }

   if (write_dsp(chip, chip->comm_page_phys) < 0) {
    dev_err(chip->card->dev,
     "load_dsp: Failed to write comm page address\n");
    return -EIO;
   }





   if (read_sn(chip) < 0) {
    dev_err(chip->card->dev,
     "load_dsp: Failed to read serial number\n");
    return -EIO;
   }

   chip->dsp_code = code;
   chip->bad_board = 0;
   return 0;
  }
  udelay(100);
 }

 dev_err(chip->card->dev,
  "load_dsp: DSP load timed out waiting for HF4\n");
 return -EIO;
}
