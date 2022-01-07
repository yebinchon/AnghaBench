
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct fsl_ssi_regvals {int srcr; int stcr; int sier; int scr; } ;
struct fsl_ssi {int streams; int regs; int dev; scalar_t__ use_dma; TYPE_1__* soc; struct fsl_ssi_regvals* regvals; } ;
struct TYPE_2__ {scalar_t__ offline_config; } ;


 int BIT (int) ;
 int REG_SSI_SCR ;
 int REG_SSI_SFCSR ;
 int REG_SSI_SIER ;
 int REG_SSI_SOR ;
 int REG_SSI_SRCR ;
 int REG_SSI_STCR ;
 size_t RX ;
 int SSI_SCR_SSIEN ;
 scalar_t__ SSI_SFCSR_TFCNT0 (int) ;
 int SSI_SOR_xX_CLR (int) ;
 size_t TX ;
 int dev_warn (int ,char*) ;
 int regmap_read (int ,int ,int*) ;
 int regmap_update_bits (int ,int ,int,int) ;

__attribute__((used)) static void fsl_ssi_config_enable(struct fsl_ssi *ssi, bool tx)
{
 struct fsl_ssi_regvals *vals = ssi->regvals;
 int dir = tx ? TX : RX;
 u32 sier, srcr, stcr;


 regmap_update_bits(ssi->regs, REG_SSI_SOR,
      SSI_SOR_xX_CLR(tx), SSI_SOR_xX_CLR(tx));






 if (ssi->soc->offline_config && ssi->streams)
  goto enable_scr;

 if (ssi->soc->offline_config) {




  srcr = vals[RX].srcr | vals[TX].srcr;
  stcr = vals[RX].stcr | vals[TX].stcr;
  sier = vals[RX].sier | vals[TX].sier;
 } else {

  srcr = vals[dir].srcr;
  stcr = vals[dir].stcr;
  sier = vals[dir].sier;
 }


 regmap_update_bits(ssi->regs, REG_SSI_SRCR, srcr, srcr);
 regmap_update_bits(ssi->regs, REG_SSI_STCR, stcr, stcr);
 regmap_update_bits(ssi->regs, REG_SSI_SIER, sier, sier);

enable_scr:






 if (ssi->use_dma && tx) {
  int try = 100;
  u32 sfcsr;


  regmap_update_bits(ssi->regs, REG_SSI_SCR,
       SSI_SCR_SSIEN, SSI_SCR_SSIEN);


  do {
   regmap_read(ssi->regs, REG_SSI_SFCSR, &sfcsr);
   if (SSI_SFCSR_TFCNT0(sfcsr))
    break;
  } while (--try);


  if (!SSI_SFCSR_TFCNT0(sfcsr))
   dev_warn(ssi->dev, "Timeout waiting TX FIFO filling\n");
 }

 regmap_update_bits(ssi->regs, REG_SSI_SCR,
      vals[dir].scr, vals[dir].scr);


 ssi->streams |= BIT(dir);
}
