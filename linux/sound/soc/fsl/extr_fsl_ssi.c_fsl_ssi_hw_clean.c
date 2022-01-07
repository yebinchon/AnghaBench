
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsl_ssi {int regs; } ;


 int REG_SSI_SACNT ;
 int REG_SSI_SCR ;
 int REG_SSI_SOR ;
 int SSI_SCR_RE ;
 int SSI_SCR_SSIEN ;
 int SSI_SCR_TE ;
 scalar_t__ fsl_ssi_is_ac97 (struct fsl_ssi*) ;
 int regmap_update_bits (int ,int ,int,int ) ;
 int regmap_write (int ,int ,int ) ;

__attribute__((used)) static void fsl_ssi_hw_clean(struct fsl_ssi *ssi)
{

 if (fsl_ssi_is_ac97(ssi)) {

  regmap_update_bits(ssi->regs, REG_SSI_SCR,
       SSI_SCR_TE | SSI_SCR_RE, 0);

  regmap_write(ssi->regs, REG_SSI_SACNT, 0);

  regmap_write(ssi->regs, REG_SSI_SOR, 0);

  regmap_update_bits(ssi->regs, REG_SSI_SCR, SSI_SCR_SSIEN, 0);
 }
}
