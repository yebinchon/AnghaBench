
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ssp_priv {struct ssp_device* ssp; } ;
struct ssp_device {int dummy; } ;
struct snd_soc_dai {int dummy; } ;


 int SSCR1 ;
 int SSCR1_TTE ;
 int pxa_ssp_read_reg (struct ssp_device*,int ) ;
 int pxa_ssp_write_reg (struct ssp_device*,int ,int ) ;
 struct ssp_priv* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;

__attribute__((used)) static int pxa_ssp_set_dai_tristate(struct snd_soc_dai *cpu_dai,
 int tristate)
{
 struct ssp_priv *priv = snd_soc_dai_get_drvdata(cpu_dai);
 struct ssp_device *ssp = priv->ssp;
 u32 sscr1;

 sscr1 = pxa_ssp_read_reg(ssp, SSCR1);
 if (tristate)
  sscr1 &= ~SSCR1_TTE;
 else
  sscr1 |= SSCR1_TTE;
 pxa_ssp_write_reg(ssp, SSCR1, sscr1);

 return 0;
}
