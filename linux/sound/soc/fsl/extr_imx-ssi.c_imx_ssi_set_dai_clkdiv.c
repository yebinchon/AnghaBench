
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct snd_soc_dai {int dummy; } ;
struct imx_ssi {scalar_t__ base; } ;


 int EINVAL ;






 scalar_t__ SSI_SRCCR ;
 scalar_t__ SSI_STCCR ;
 int SSI_STCCR_DIV2 ;
 int SSI_STCCR_PM (int) ;
 int SSI_STCCR_PSR ;
 int readl (scalar_t__) ;
 struct imx_ssi* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int imx_ssi_set_dai_clkdiv(struct snd_soc_dai *cpu_dai,
      int div_id, int div)
{
 struct imx_ssi *ssi = snd_soc_dai_get_drvdata(cpu_dai);
 u32 stccr, srccr;

 stccr = readl(ssi->base + SSI_STCCR);
 srccr = readl(ssi->base + SSI_SRCCR);

 switch (div_id) {
 case 130:
  stccr &= ~SSI_STCCR_DIV2;
  stccr |= div;
  break;
 case 128:
  stccr &= ~SSI_STCCR_PSR;
  stccr |= div;
  break;
 case 129:
  stccr &= ~0xff;
  stccr |= SSI_STCCR_PM(div);
  break;
 case 133:
  stccr &= ~SSI_STCCR_DIV2;
  stccr |= div;
  break;
 case 131:
  stccr &= ~SSI_STCCR_PSR;
  stccr |= div;
  break;
 case 132:
  stccr &= ~0xff;
  stccr |= SSI_STCCR_PM(div);
  break;
 default:
  return -EINVAL;
 }

 writel(stccr, ssi->base + SSI_STCCR);
 writel(srccr, ssi->base + SSI_SRCCR);

 return 0;
}
