
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fsl_ssi {int dai_fmt; int regs; scalar_t__ use_dual_fifo; int fifo_watermark; } ;


 int REG_SSI_SCR ;
 int REG_SSI_SFCSR ;
 int SSI_SCR_TCH_EN ;
 int SSI_SFCSR_RFWM0 (int ) ;
 int SSI_SFCSR_RFWM1 (int ) ;
 int SSI_SFCSR_TFWM0 (int ) ;
 int SSI_SFCSR_TFWM1 (int ) ;
 int _fsl_ssi_set_dai_fmt (struct fsl_ssi*,int ) ;
 scalar_t__ fsl_ssi_is_ac97 (struct fsl_ssi*) ;
 int fsl_ssi_setup_ac97 (struct fsl_ssi*) ;
 int fsl_ssi_setup_regvals (struct fsl_ssi*) ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 int regmap_write (int ,int ,int) ;

__attribute__((used)) static int fsl_ssi_hw_init(struct fsl_ssi *ssi)
{
 u32 wm = ssi->fifo_watermark;


 fsl_ssi_setup_regvals(ssi);


 regmap_write(ssi->regs, REG_SSI_SFCSR,
       SSI_SFCSR_TFWM0(wm) | SSI_SFCSR_RFWM0(wm) |
       SSI_SFCSR_TFWM1(wm) | SSI_SFCSR_RFWM1(wm));


 if (ssi->use_dual_fifo)
  regmap_update_bits(ssi->regs, REG_SSI_SCR,
       SSI_SCR_TCH_EN, SSI_SCR_TCH_EN);


 if (fsl_ssi_is_ac97(ssi)) {
  _fsl_ssi_set_dai_fmt(ssi, ssi->dai_fmt);
  fsl_ssi_setup_ac97(ssi);
 }

 return 0;
}
