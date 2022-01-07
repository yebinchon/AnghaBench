
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_dai {int dev; } ;
struct TYPE_2__ {scalar_t__ regs; int iis_clk; } ;


 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int S3C2410_GPE (int ) ;
 scalar_t__ S3C2410_IISCON ;
 int S3C2410_IISCON_IISEN ;
 int S3C_GPIO_PULL_NONE ;
 int S3C_GPIO_SFN (int) ;
 int clk_prepare_enable (int ) ;
 int devm_clk_get (int ,char*) ;
 int pr_err (char*) ;
 TYPE_1__ s3c24xx_i2s ;
 int s3c24xx_i2s_pcm_stereo_in ;
 int s3c24xx_i2s_pcm_stereo_out ;
 int s3c24xx_snd_rxctrl (int ) ;
 int s3c24xx_snd_txctrl (int ) ;
 int s3c_gpio_cfgall_range (int ,int,int ,int ) ;
 int snd_soc_dai_init_dma_data (struct snd_soc_dai*,int *,int *) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int s3c24xx_i2s_probe(struct snd_soc_dai *dai)
{
 int ret;
 snd_soc_dai_init_dma_data(dai, &s3c24xx_i2s_pcm_stereo_out,
     &s3c24xx_i2s_pcm_stereo_in);

 s3c24xx_i2s.iis_clk = devm_clk_get(dai->dev, "iis");
 if (IS_ERR(s3c24xx_i2s.iis_clk)) {
  pr_err("failed to get iis_clock\n");
  return PTR_ERR(s3c24xx_i2s.iis_clk);
 }
 ret = clk_prepare_enable(s3c24xx_i2s.iis_clk);
 if (ret)
  return ret;


 s3c_gpio_cfgall_range(S3C2410_GPE(0), 5, S3C_GPIO_SFN(2),
         S3C_GPIO_PULL_NONE);

 writel(S3C2410_IISCON_IISEN, s3c24xx_i2s.regs + S3C2410_IISCON);

 s3c24xx_snd_txctrl(0);
 s3c24xx_snd_rxctrl(0);

 return 0;
}
