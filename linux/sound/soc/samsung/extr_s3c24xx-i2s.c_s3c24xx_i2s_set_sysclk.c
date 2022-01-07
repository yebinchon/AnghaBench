
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
 int S3C2440_IISMOD_MPLL ;


 int readl (scalar_t__) ;
 TYPE_1__ s3c24xx_i2s ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int s3c24xx_i2s_set_sysclk(struct snd_soc_dai *cpu_dai,
 int clk_id, unsigned int freq, int dir)
{
 u32 iismod = readl(s3c24xx_i2s.regs + S3C2410_IISMOD);

 iismod &= ~S3C2440_IISMOD_MPLL;

 switch (clk_id) {
 case 128:
  break;
 case 129:
  iismod |= S3C2440_IISMOD_MPLL;
  break;
 default:
  return -EINVAL;
 }

 writel(iismod, s3c24xx_i2s.regs + S3C2410_IISMOD);
 return 0;
}
