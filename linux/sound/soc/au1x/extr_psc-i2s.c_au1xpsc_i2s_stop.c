
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct au1xpsc_audio_data {int dummy; } ;


 int I2SPCR_STOP (int) ;
 unsigned long I2SSTAT_BUSY (int) ;
 int I2S_CFG (struct au1xpsc_audio_data*) ;
 int I2S_PCR (struct au1xpsc_audio_data*) ;
 int I2S_STAT (struct au1xpsc_audio_data*) ;
 int PSC_CTRL (struct au1xpsc_audio_data*) ;
 int PSC_CTRL_SUSPEND ;
 unsigned long PSC_I2SSTAT_RB ;
 unsigned long PSC_I2SSTAT_TB ;
 unsigned long __raw_readl (int ) ;
 int __raw_writel (int ,int ) ;
 int wmb () ;

__attribute__((used)) static int au1xpsc_i2s_stop(struct au1xpsc_audio_data *pscdata, int stype)
{
 unsigned long tmo, stat;

 __raw_writel(I2SPCR_STOP(stype), I2S_PCR(pscdata));
 wmb();


 tmo = 1000000;
 while ((__raw_readl(I2S_STAT(pscdata)) & I2SSTAT_BUSY(stype)) && tmo)
  tmo--;


 stat = __raw_readl(I2S_STAT(pscdata));
 if (!(stat & (PSC_I2SSTAT_TB | PSC_I2SSTAT_RB))) {
  __raw_writel(0, I2S_CFG(pscdata));
  wmb();
  __raw_writel(PSC_CTRL_SUSPEND, PSC_CTRL(pscdata));
  wmb();
 }
 return 0;
}
