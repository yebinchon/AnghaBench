
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct fsl_micfil {TYPE_1__* pdev; int regmap; } ;
struct TYPE_2__ {int dev; } ;


 int MICFIL_CTRL2_CICOSR_MASK ;
 int MICFIL_CTRL2_CICOSR_SHIFT ;
 int MICFIL_CTRL2_QSEL_MASK ;






 int REG_MICFIL_CTRL2 ;
 int dev_err (int *,char*) ;
 int regmap_read (int ,int ,int*) ;

__attribute__((used)) static inline int get_pdm_clk(struct fsl_micfil *micfil,
         unsigned int rate)
{
 u32 ctrl2_reg;
 int qsel, osr;
 int bclk;

 regmap_read(micfil->regmap, REG_MICFIL_CTRL2, &ctrl2_reg);
 osr = 16 - ((ctrl2_reg & MICFIL_CTRL2_CICOSR_MASK)
      >> MICFIL_CTRL2_CICOSR_SHIFT);

 regmap_read(micfil->regmap, REG_MICFIL_CTRL2, &ctrl2_reg);
 qsel = ctrl2_reg & MICFIL_CTRL2_QSEL_MASK;

 switch (qsel) {
 case 133:
  bclk = rate * 8 * osr / 2;
  break;
 case 131:
 case 130:
  bclk = rate * 4 * osr * 1;
  break;
 case 132:
 case 129:
  bclk = rate * 2 * osr * 2;
  break;
 case 128:
  bclk = rate * osr * 4;
  break;
 default:
  dev_err(&micfil->pdev->dev,
   "Please make sure you select a valid quality.\n");
  bclk = -1;
  break;
 }

 return bclk;
}
