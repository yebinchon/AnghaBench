
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int dummy; } ;
struct fsl_ssi {struct regmap* regs; } ;


 int REG_SSI_SACNT ;
 int REG_SSI_SCR ;
 int REG_SSI_SOR ;
 int REG_SSI_SRCCR ;
 int REG_SSI_STCCR ;
 int SSI_SACNT_AC97EN ;
 int SSI_SACNT_FV ;
 int SSI_SCR_RE ;
 int SSI_SCR_SSIEN ;
 int SSI_SCR_TE ;
 int SSI_SOR_WAIT (int) ;
 int SSI_SxCCR_DC (int) ;
 int SSI_SxCCR_WL (int) ;
 int regmap_update_bits (struct regmap*,int ,int,int) ;
 int regmap_write (struct regmap*,int ,int) ;

__attribute__((used)) static void fsl_ssi_setup_ac97(struct fsl_ssi *ssi)
{
 struct regmap *regs = ssi->regs;


 regmap_write(regs, REG_SSI_STCCR, SSI_SxCCR_WL(17) | SSI_SxCCR_DC(13));
 regmap_write(regs, REG_SSI_SRCCR, SSI_SxCCR_WL(17) | SSI_SxCCR_DC(13));


 regmap_write(regs, REG_SSI_SACNT, SSI_SACNT_AC97EN | SSI_SACNT_FV);


 regmap_update_bits(regs, REG_SSI_SCR,
      SSI_SCR_SSIEN | SSI_SCR_TE | SSI_SCR_RE,
      SSI_SCR_SSIEN | SSI_SCR_TE | SSI_SCR_RE);

 regmap_write(regs, REG_SSI_SOR, SSI_SOR_WAIT(3));
}
