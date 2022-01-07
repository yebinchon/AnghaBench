
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ regs; } ;


 scalar_t__ S3C2410_IISMOD ;
 int S3C2410_IISMOD_SLAVE ;
 int readl (scalar_t__) ;
 TYPE_1__ s3c24xx_i2s ;

__attribute__((used)) static inline int s3c24xx_snd_is_clkmaster(void)
{
 return (readl(s3c24xx_i2s.regs + S3C2410_IISMOD) & S3C2410_IISMOD_SLAVE) ? 0:1;
}
