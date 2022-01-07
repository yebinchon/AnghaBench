
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {scalar_t__ regs; } ;


 int ETIMEDOUT ;
 scalar_t__ S3C2410_IISCON ;
 int S3C2410_IISCON_LRINDEX ;
 int readl (scalar_t__) ;
 TYPE_1__ s3c24xx_i2s ;
 int udelay (int) ;

__attribute__((used)) static int s3c24xx_snd_lrsync(void)
{
 u32 iiscon;
 int timeout = 50;

 while (1) {
  iiscon = readl(s3c24xx_i2s.regs + S3C2410_IISCON);
  if (iiscon & S3C2410_IISCON_LRINDEX)
   break;

  if (!timeout--)
   return -ETIMEDOUT;
  udelay(100);
 }

 return 0;
}
