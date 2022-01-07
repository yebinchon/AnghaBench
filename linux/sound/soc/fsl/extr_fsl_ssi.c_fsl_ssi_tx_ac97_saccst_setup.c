
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct regmap {int dummy; } ;
struct fsl_ssi {TYPE_1__* soc; struct regmap* regs; } ;
struct TYPE_2__ {int imx21regs; } ;


 int REG_SSI_SACCDIS ;
 int REG_SSI_SACCEN ;
 int regmap_write (struct regmap*,int ,int) ;

__attribute__((used)) static void fsl_ssi_tx_ac97_saccst_setup(struct fsl_ssi *ssi)
{
 struct regmap *regs = ssi->regs;


 if (!ssi->soc->imx21regs) {

  regmap_write(regs, REG_SSI_SACCDIS, 0xff);

  regmap_write(regs, REG_SSI_SACCEN, 0x300);
 }
}
