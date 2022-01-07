
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct echoaudio {int asic_code; scalar_t__ asic_loaded; } ;


 int DSP_FNC_LOAD_3G_ASIC ;
 int E3G_48KHZ ;
 int E3G_FREQ_REG_DEFAULT ;
 int FW_3G_ASIC ;
 int check_asic_status (struct echoaudio*) ;
 int load_asic_generic (struct echoaudio*,int ,int ) ;
 int mdelay (int) ;
 int msleep (int) ;
 int write_control_reg (struct echoaudio*,int ,int ,int) ;

__attribute__((used)) static int load_asic(struct echoaudio *chip)
{
 int box_type, err;

 if (chip->asic_loaded)
  return 0;


 mdelay(2);

 err = load_asic_generic(chip, DSP_FNC_LOAD_3G_ASIC, FW_3G_ASIC);
 if (err < 0)
  return err;

 chip->asic_code = FW_3G_ASIC;


 msleep(1000);

 box_type = check_asic_status(chip);



 if (box_type >= 0) {
  err = write_control_reg(chip, E3G_48KHZ,
     E3G_FREQ_REG_DEFAULT, 1);
  if (err < 0)
   return err;
 }

 return box_type;
}
