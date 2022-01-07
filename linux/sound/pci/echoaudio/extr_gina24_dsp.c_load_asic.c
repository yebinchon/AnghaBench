
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct echoaudio {scalar_t__ device_id; short asic_code; scalar_t__ asic_loaded; } ;


 scalar_t__ DEVICE_ID_56361 ;
 int DSP_FNC_LOAD_GINA24_ASIC ;
 short FW_GINA24_301_ASIC ;
 short FW_GINA24_361_ASIC ;
 int GML_48KHZ ;
 int GML_CONVERTER_ENABLE ;
 int check_asic_status (struct echoaudio*) ;
 int load_asic_generic (struct echoaudio*,int ,short) ;
 int mdelay (int) ;
 int write_control_reg (struct echoaudio*,int,int) ;

__attribute__((used)) static int load_asic(struct echoaudio *chip)
{
 u32 control_reg;
 int err;
 short asic;

 if (chip->asic_loaded)
  return 1;


 mdelay(10);


 if (chip->device_id == DEVICE_ID_56361)
  asic = FW_GINA24_361_ASIC;
 else
  asic = FW_GINA24_301_ASIC;

 err = load_asic_generic(chip, DSP_FNC_LOAD_GINA24_ASIC, asic);
 if (err < 0)
  return err;

 chip->asic_code = asic;


 mdelay(10);

 err = check_asic_status(chip);



 if (!err) {
  control_reg = GML_CONVERTER_ENABLE | GML_48KHZ;
  err = write_control_reg(chip, control_reg, 1);
 }
 return err;
}
