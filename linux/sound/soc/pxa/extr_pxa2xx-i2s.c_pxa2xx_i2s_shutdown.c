
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {scalar_t__ stream; } ;


 int SACR0 ;
 int SACR0_ENB ;
 int SACR1 ;
 int SACR1_DREC ;
 int SACR1_DRPL ;
 int SAIMR ;
 int SAIMR_RFS ;
 int SAIMR_TFS ;
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ;
 int clk_disable_unprepare (int ) ;
 scalar_t__ clk_ena ;
 int clk_i2s ;
 int pxa_i2s_wait () ;

__attribute__((used)) static void pxa2xx_i2s_shutdown(struct snd_pcm_substream *substream,
    struct snd_soc_dai *dai)
{
 if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK) {
  SACR1 |= SACR1_DRPL;
  SAIMR &= ~SAIMR_TFS;
 } else {
  SACR1 |= SACR1_DREC;
  SAIMR &= ~SAIMR_RFS;
 }

 if ((SACR1 & (SACR1_DREC | SACR1_DRPL)) == (SACR1_DREC | SACR1_DRPL)) {
  SACR0 &= ~SACR0_ENB;
  pxa_i2s_wait();
  if (clk_ena) {
   clk_disable_unprepare(clk_i2s);
   clk_ena = 0;
  }
 }
}
