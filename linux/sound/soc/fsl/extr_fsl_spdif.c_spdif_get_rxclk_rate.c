
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
typedef int u64 ;
typedef int u32 ;
struct regmap {int dummy; } ;
struct platform_device {int dev; } ;
struct fsl_spdif_priv {int sysclk; struct platform_device* pdev; struct regmap* regmap; } ;
typedef enum spdif_gainsel { ____Placeholder_spdif_gainsel } spdif_gainsel ;


 int REG_SPDIF_SRFM ;
 int REG_SPDIF_SRPC ;
 int SRPC_CLKSRC_SEL_OFFSET ;
 int SRPC_DPLL_LOCKED ;
 int clk_get_rate (int ) ;
 int dev_dbg (int *,char*,int) ;
 int do_div (int,int) ;
 int* gainsel_multi ;
 int regmap_read (struct regmap*,int ,int*) ;
 scalar_t__* srpc_dpll_locked ;

__attribute__((used)) static int spdif_get_rxclk_rate(struct fsl_spdif_priv *spdif_priv,
    enum spdif_gainsel gainsel)
{
 struct regmap *regmap = spdif_priv->regmap;
 struct platform_device *pdev = spdif_priv->pdev;
 u64 tmpval64, busclk_freq = 0;
 u32 freqmeas, phaseconf;
 u8 clksrc;

 regmap_read(regmap, REG_SPDIF_SRFM, &freqmeas);
 regmap_read(regmap, REG_SPDIF_SRPC, &phaseconf);

 clksrc = (phaseconf >> SRPC_CLKSRC_SEL_OFFSET) & 0xf;


 if (srpc_dpll_locked[clksrc] && (phaseconf & SRPC_DPLL_LOCKED))
  busclk_freq = clk_get_rate(spdif_priv->sysclk);


 tmpval64 = (u64) busclk_freq * freqmeas;
 do_div(tmpval64, gainsel_multi[gainsel] * 1024);
 do_div(tmpval64, 128 * 1024);

 dev_dbg(&pdev->dev, "FreqMeas: %d\n", freqmeas);
 dev_dbg(&pdev->dev, "BusclkFreq: %lld\n", busclk_freq);
 dev_dbg(&pdev->dev, "RxRate: %lld\n", tmpval64);

 return (int)tmpval64;
}
