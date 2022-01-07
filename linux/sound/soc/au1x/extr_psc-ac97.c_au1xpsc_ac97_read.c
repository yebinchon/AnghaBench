
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ac97 {int dummy; } ;
struct au1xpsc_audio_data {int lock; } ;


 int AC97_CDC (struct au1xpsc_audio_data*) ;
 int AC97_EVNT (struct au1xpsc_audio_data*) ;
 unsigned short AC97_RW_RETRIES ;
 int PSC_AC97CDC_INDX (unsigned short) ;
 int PSC_AC97CDC_RD ;
 int PSC_AC97EVNT_CD ;
 int __raw_readl (int ) ;
 int __raw_writel (int,int ) ;
 struct au1xpsc_audio_data* ac97_to_pscdata (struct snd_ac97*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int udelay (int) ;
 int wmb () ;

__attribute__((used)) static unsigned short au1xpsc_ac97_read(struct snd_ac97 *ac97,
     unsigned short reg)
{
 struct au1xpsc_audio_data *pscdata = ac97_to_pscdata(ac97);
 unsigned short retry, tmo;
 unsigned long data;

 __raw_writel(PSC_AC97EVNT_CD, AC97_EVNT(pscdata));
 wmb();

 retry = AC97_RW_RETRIES;
 do {
  mutex_lock(&pscdata->lock);

  __raw_writel(PSC_AC97CDC_RD | PSC_AC97CDC_INDX(reg),
     AC97_CDC(pscdata));
  wmb();

  tmo = 20;
  do {
   udelay(21);
   if (__raw_readl(AC97_EVNT(pscdata)) & PSC_AC97EVNT_CD)
    break;
  } while (--tmo);

  data = __raw_readl(AC97_CDC(pscdata));

  __raw_writel(PSC_AC97EVNT_CD, AC97_EVNT(pscdata));
  wmb();

  mutex_unlock(&pscdata->lock);

  if (reg != ((data >> 16) & 0x7f))
   tmo = 1;

 } while (--retry && !tmo);

 return retry ? data & 0xffff : 0xffff;
}
