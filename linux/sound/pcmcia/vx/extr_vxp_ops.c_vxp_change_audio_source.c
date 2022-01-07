
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vx_core {int type; } ;
struct snd_vxpocket {int mic_level; int regCDSP; } ;


 int CDSP ;
 int MICRO ;
 int P24_CDSP_MIC20_SEL_MASK ;
 int P24_CDSP_MIC38_SEL_MASK ;
 int P24_CDSP_MICS_SEL_MASK ;
 int VXP_CDSP_DATAIN_SEL_MASK ;
 int VXP_CDSP_MIC_SEL_MASK ;



 int VX_TYPE_VXP440 ;
 struct snd_vxpocket* to_vxpocket (struct vx_core*) ;
 int vx_compute_mic_level (int ) ;
 int vx_outb (struct snd_vxpocket*,int ,int ) ;

__attribute__((used)) static void vxp_change_audio_source(struct vx_core *_chip, int src)
{
 struct snd_vxpocket *chip = to_vxpocket(_chip);

 switch (src) {
 case 130:
  chip->regCDSP |= VXP_CDSP_DATAIN_SEL_MASK;
  vx_outb(chip, CDSP, chip->regCDSP);
  break;
 case 129:
  chip->regCDSP &= ~VXP_CDSP_DATAIN_SEL_MASK;
  if (_chip->type == VX_TYPE_VXP440)
   chip->regCDSP &= ~P24_CDSP_MICS_SEL_MASK;
  else
   chip->regCDSP &= ~VXP_CDSP_MIC_SEL_MASK;
  vx_outb(chip, CDSP, chip->regCDSP);
  break;
 case 128:
  chip->regCDSP &= ~VXP_CDSP_DATAIN_SEL_MASK;

  if (_chip->type == VX_TYPE_VXP440) {
   chip->regCDSP &= ~P24_CDSP_MICS_SEL_MASK;
   if (chip->mic_level)
    chip->regCDSP |= P24_CDSP_MIC38_SEL_MASK;
   else
    chip->regCDSP |= P24_CDSP_MIC20_SEL_MASK;
   vx_outb(chip, CDSP, chip->regCDSP);
  } else {
   chip->regCDSP |= VXP_CDSP_MIC_SEL_MASK;
   vx_outb(chip, CDSP, chip->regCDSP);
   vx_outb(chip, MICRO, vx_compute_mic_level(chip->mic_level));
  }
  break;
 }
}
