
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct snd_soc_dai {int dummy; } ;
struct TYPE_2__ {scalar_t__ regs; } ;


 int EINVAL ;
 scalar_t__ S3C2410_IISMOD ;
 int S3C2410_IISMOD_MSB ;
 int S3C2410_IISMOD_SLAVE ;


 unsigned int SND_SOC_DAIFMT_FORMAT_MASK ;


 unsigned int SND_SOC_DAIFMT_MASTER_MASK ;
 int pr_debug (char*,int ) ;
 int readl (scalar_t__) ;
 TYPE_1__ s3c24xx_i2s ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int s3c24xx_i2s_set_fmt(struct snd_soc_dai *cpu_dai,
  unsigned int fmt)
{
 u32 iismod;

 iismod = readl(s3c24xx_i2s.regs + S3C2410_IISMOD);
 pr_debug("hw_params r: IISMOD: %x \n", iismod);

 switch (fmt & SND_SOC_DAIFMT_MASTER_MASK) {
 case 131:
  iismod |= S3C2410_IISMOD_SLAVE;
  break;
 case 130:
  iismod &= ~S3C2410_IISMOD_SLAVE;
  break;
 default:
  return -EINVAL;
 }

 switch (fmt & SND_SOC_DAIFMT_FORMAT_MASK) {
 case 128:
  iismod |= S3C2410_IISMOD_MSB;
  break;
 case 129:
  iismod &= ~S3C2410_IISMOD_MSB;
  break;
 default:
  return -EINVAL;
 }

 writel(iismod, s3c24xx_i2s.regs + S3C2410_IISMOD);
 pr_debug("hw_params w: IISMOD: %x \n", iismod);

 return 0;
}
