
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct echoaudio {scalar_t__ device_id; short asic_code; } ;


 scalar_t__ DEVICE_ID_56361 ;
 int DSP_FNC_LOAD_MONA_PCI_CARD_ASIC ;
 short FW_MONA_301_1_ASIC48 ;
 short FW_MONA_301_1_ASIC96 ;
 short FW_MONA_361_1_ASIC48 ;
 short FW_MONA_361_1_ASIC96 ;
 int load_asic_generic (struct echoaudio*,int ,short) ;

__attribute__((used)) static int switch_asic(struct echoaudio *chip, char double_speed)
{
 int err;
 short asic;




 if (chip->device_id == DEVICE_ID_56361) {
  if (double_speed)
   asic = FW_MONA_361_1_ASIC96;
  else
   asic = FW_MONA_361_1_ASIC48;
 } else {
  if (double_speed)
   asic = FW_MONA_301_1_ASIC96;
  else
   asic = FW_MONA_301_1_ASIC48;
 }

 if (asic != chip->asic_code) {

  err = load_asic_generic(chip, DSP_FNC_LOAD_MONA_PCI_CARD_ASIC,
     asic);
  if (err < 0)
   return err;
  chip->asic_code = asic;
 }

 return 0;
}
