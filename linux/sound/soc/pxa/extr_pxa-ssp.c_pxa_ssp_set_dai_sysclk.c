
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ssp_priv {int sysclk; scalar_t__ extclk; struct ssp_device* ssp; } ;
struct ssp_device {scalar_t__ type; int clk; TYPE_1__* pdev; } ;
struct snd_soc_dai {int id; } ;
struct TYPE_2__ {int dev; } ;


 int ENODEV ;
 scalar_t__ PXA25x_SSP ;
 scalar_t__ PXA3xx_SSP ;





 int SSCR0 ;
 int SSCR0_ACS ;
 int SSCR0_ECS ;
 int SSCR0_MOD ;
 int SSCR0_NCS ;
 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 int clk_set_rate (scalar_t__,unsigned int) ;
 int dev_dbg (int *,char*,int ,int,unsigned int) ;
 int pxa_ssp_read_reg (struct ssp_device*,int ) ;
 int pxa_ssp_set_scr (struct ssp_device*,int) ;
 int pxa_ssp_write_reg (struct ssp_device*,int ,int) ;
 struct ssp_priv* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;

__attribute__((used)) static int pxa_ssp_set_dai_sysclk(struct snd_soc_dai *cpu_dai,
 int clk_id, unsigned int freq, int dir)
{
 struct ssp_priv *priv = snd_soc_dai_get_drvdata(cpu_dai);
 struct ssp_device *ssp = priv->ssp;

 u32 sscr0 = pxa_ssp_read_reg(ssp, SSCR0) &
  ~(SSCR0_ECS | SSCR0_NCS | SSCR0_MOD | SSCR0_ACS);

 if (priv->extclk) {
  int ret;






  ret = clk_set_rate(priv->extclk, freq);
  if (ret < 0)
   return ret;

  clk_id = 131;
 }

 dev_dbg(&ssp->pdev->dev,
  "pxa_ssp_set_dai_sysclk id: %d, clk_id %d, freq %u\n",
  cpu_dai->id, clk_id, freq);

 switch (clk_id) {
 case 129:
  sscr0 |= SSCR0_MOD;
  break;
 case 128:

  if (ssp->type == PXA25x_SSP)
   priv->sysclk = 1843200;
  else
   priv->sysclk = 13000000;
  break;
 case 131:
  priv->sysclk = freq;
  sscr0 |= SSCR0_ECS;
  break;
 case 130:
  priv->sysclk = freq;
  sscr0 |= SSCR0_NCS | SSCR0_MOD;
  break;
 case 132:
  priv->sysclk = 0;
  pxa_ssp_set_scr(ssp, 1);
  sscr0 |= SSCR0_ACS;
  break;
 default:
  return -ENODEV;
 }



 if (ssp->type != PXA3xx_SSP)
  clk_disable_unprepare(ssp->clk);
 pxa_ssp_write_reg(ssp, SSCR0, sscr0);
 if (ssp->type != PXA3xx_SSP)
  clk_prepare_enable(ssp->clk);

 return 0;
}
