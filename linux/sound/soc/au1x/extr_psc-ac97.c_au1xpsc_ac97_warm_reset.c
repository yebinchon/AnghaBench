
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ac97 {int dummy; } ;
struct au1xpsc_audio_data {int dummy; } ;


 int AC97_RST (struct au1xpsc_audio_data*) ;
 int PSC_AC97RST_SNC ;
 int __raw_writel (int ,int ) ;
 struct au1xpsc_audio_data* ac97_to_pscdata (struct snd_ac97*) ;
 int msleep (int) ;
 int wmb () ;

__attribute__((used)) static void au1xpsc_ac97_warm_reset(struct snd_ac97 *ac97)
{
 struct au1xpsc_audio_data *pscdata = ac97_to_pscdata(ac97);

 __raw_writel(PSC_AC97RST_SNC, AC97_RST(pscdata));
 wmb();
 msleep(10);
 __raw_writel(0, AC97_RST(pscdata));
 wmb();
}
