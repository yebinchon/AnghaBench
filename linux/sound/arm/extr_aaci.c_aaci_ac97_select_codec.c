
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct snd_ac97 {int num; } ;
struct aaci {int maincr; scalar_t__ base; } ;


 scalar_t__ AACI_MAINCR ;
 scalar_t__ AACI_SL1RX ;
 scalar_t__ AACI_SL2RX ;
 scalar_t__ AACI_SLFR ;
 int MAINCR_SCRA (int ) ;
 int SLFR_1RXV ;
 int SLFR_2RXV ;
 int readl (scalar_t__) ;
 int udelay (int) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void aaci_ac97_select_codec(struct aaci *aaci, struct snd_ac97 *ac97)
{
 u32 v, maincr = aaci->maincr | MAINCR_SCRA(ac97->num);




 v = readl(aaci->base + AACI_SLFR);
 if (v & SLFR_2RXV)
  readl(aaci->base + AACI_SL2RX);
 if (v & SLFR_1RXV)
  readl(aaci->base + AACI_SL1RX);

 if (maincr != readl(aaci->base + AACI_MAINCR)) {
  writel(maincr, aaci->base + AACI_MAINCR);
  readl(aaci->base + AACI_MAINCR);
  udelay(1);
 }
}
