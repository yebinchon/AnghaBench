
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {struct device* dev; } ;
struct s3c_i2sv2_info {scalar_t__ regs; int iis_pclk; struct device* dev; } ;
struct device {int dummy; } ;


 int ENOENT ;
 scalar_t__ IS_ERR (int ) ;
 scalar_t__ S3C2412_IISMOD ;
 unsigned int S3C2412_IISMOD_MODE_TXRX ;
 int clk_get (struct device*,char*) ;
 int clk_prepare_enable (int ) ;
 int dev_err (struct device*,char*) ;
 unsigned int readl (scalar_t__) ;
 int s3c2412_snd_rxctrl (struct s3c_i2sv2_info*,int ) ;
 int s3c2412_snd_txctrl (struct s3c_i2sv2_info*,int ) ;
 int snd_soc_dai_set_drvdata (struct snd_soc_dai*,struct s3c_i2sv2_info*) ;
 int writel (unsigned int,scalar_t__) ;

int s3c_i2sv2_probe(struct snd_soc_dai *dai,
      struct s3c_i2sv2_info *i2s,
      unsigned long base)
{
 struct device *dev = dai->dev;
 unsigned int iismod;

 i2s->dev = dev;


 snd_soc_dai_set_drvdata(dai, i2s);

 i2s->iis_pclk = clk_get(dev, "iis");
 if (IS_ERR(i2s->iis_pclk)) {
  dev_err(dev, "failed to get iis_clock\n");
  return -ENOENT;
 }

 clk_prepare_enable(i2s->iis_pclk);



 iismod = readl(i2s->regs + S3C2412_IISMOD);
 iismod |= S3C2412_IISMOD_MODE_TXRX;
 writel(iismod, i2s->regs + S3C2412_IISMOD);
 s3c2412_snd_txctrl(i2s, 0);
 s3c2412_snd_rxctrl(i2s, 0);

 return 0;
}
