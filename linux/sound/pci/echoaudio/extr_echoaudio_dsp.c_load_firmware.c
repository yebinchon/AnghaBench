
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct firmware {scalar_t__ data; } ;
struct echoaudio {int dsp_code_to_load; int * dsp_code; int comm_page; } ;


 int EPERM ;
 int check_asic_status (struct echoaudio*) ;
 int free_firmware (struct firmware const*,struct echoaudio*) ;
 int get_firmware (struct firmware const**,struct echoaudio*,int ) ;
 int load_asic (struct echoaudio*) ;
 int load_dsp (struct echoaudio*,int *) ;
 scalar_t__ snd_BUG_ON (int) ;

__attribute__((used)) static int load_firmware(struct echoaudio *chip)
{
 const struct firmware *fw;
 int box_type, err;

 if (snd_BUG_ON(!chip->comm_page))
  return -EPERM;


 if (chip->dsp_code) {
  if ((box_type = check_asic_status(chip)) >= 0)
   return box_type;

  chip->dsp_code = ((void*)0);
 }

 err = get_firmware(&fw, chip, chip->dsp_code_to_load);
 if (err < 0)
  return err;
 err = load_dsp(chip, (u16 *)fw->data);
 free_firmware(fw, chip);
 if (err < 0)
  return err;

 if ((box_type = load_asic(chip)) < 0)
  return box_type;

 return box_type;
}
