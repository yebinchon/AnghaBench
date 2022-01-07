
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct au1xpsc_audio_data {int dummy; } ;


 int ETIMEDOUT ;
 int I2SPCR_CLRFIFO (int) ;
 int I2SPCR_START (int) ;
 int I2SPCR_STOP (int) ;
 unsigned long I2SSTAT_BUSY (int) ;
 int I2S_PCR (struct au1xpsc_audio_data*) ;
 int I2S_STAT (struct au1xpsc_audio_data*) ;
 unsigned long PSC_I2SSTAT_RB ;
 unsigned long PSC_I2SSTAT_TB ;
 unsigned long __raw_readl (int ) ;
 int __raw_writel (int ,int ) ;
 int au1xpsc_i2s_configure (struct au1xpsc_audio_data*) ;
 int wmb () ;

__attribute__((used)) static int au1xpsc_i2s_start(struct au1xpsc_audio_data *pscdata, int stype)
{
 unsigned long tmo, stat;
 int ret;

 ret = 0;


 stat = __raw_readl(I2S_STAT(pscdata));
 if (!(stat & (PSC_I2SSTAT_TB | PSC_I2SSTAT_RB))) {
  ret = au1xpsc_i2s_configure(pscdata);
  if (ret)
   goto out;
 }

 __raw_writel(I2SPCR_CLRFIFO(stype), I2S_PCR(pscdata));
 wmb();
 __raw_writel(I2SPCR_START(stype), I2S_PCR(pscdata));
 wmb();


 tmo = 1000000;
 while (!(__raw_readl(I2S_STAT(pscdata)) & I2SSTAT_BUSY(stype)) && tmo)
  tmo--;

 if (!tmo) {
  __raw_writel(I2SPCR_STOP(stype), I2S_PCR(pscdata));
  wmb();
  ret = -ETIMEDOUT;
 }
out:
 return ret;
}
