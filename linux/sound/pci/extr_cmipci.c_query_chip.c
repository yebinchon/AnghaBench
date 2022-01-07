
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmipci {int chip_version; int can_ac3_sw; int can_ac3_hw; int max_channels; int can_96k; int can_multi_ch; int do_soft_ac3; } ;



 unsigned int CM_CHIP_039 ;
 unsigned int CM_CHIP_039_6CH ;
 unsigned int CM_CHIP_8768 ;
 unsigned int CM_CHIP_MASK1 ;
 unsigned int CM_CHIP_MASK2 ;
 int CM_REG_CHFORMAT ;
 int CM_REG_INT_HLDCLR ;
 unsigned int snd_cmipci_read (struct cmipci*,int ) ;

__attribute__((used)) static void query_chip(struct cmipci *cm)
{
 unsigned int detect;


 detect = snd_cmipci_read(cm, CM_REG_INT_HLDCLR) & CM_CHIP_MASK2;
 if (! detect) {

  detect = snd_cmipci_read(cm, CM_REG_CHFORMAT) & CM_CHIP_MASK1;
  switch (detect) {
  case 0:
   cm->chip_version = 33;
   if (cm->do_soft_ac3)
    cm->can_ac3_sw = 1;
   else
    cm->can_ac3_hw = 1;
   break;
  case 128:
   cm->chip_version = 37;
   cm->can_ac3_hw = 1;
   break;
  default:
   cm->chip_version = 39;
   cm->can_ac3_hw = 1;
   break;
  }
  cm->max_channels = 2;
 } else {
  if (detect & CM_CHIP_039) {
   cm->chip_version = 39;
   if (detect & CM_CHIP_039_6CH)
    cm->max_channels = 6;
   else
    cm->max_channels = 4;
  } else if (detect & CM_CHIP_8768) {
   cm->chip_version = 68;
   cm->max_channels = 8;
   cm->can_96k = 1;
  } else {
   cm->chip_version = 55;
   cm->max_channels = 6;
   cm->can_96k = 1;
  }
  cm->can_ac3_hw = 1;
  cm->can_multi_ch = 1;
 }
}
