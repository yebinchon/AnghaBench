
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct cs5535audio {TYPE_1__* card; int playback_substream; int reg_lock; } ;
struct TYPE_2__ {int dev; } ;


 int ACC_BM0_STATUS ;
 int EOP ;
 int cs_readb (struct cs5535audio*,int ) ;
 int dev_err (int ,char*,int) ;
 int snd_pcm_period_elapsed (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void process_bm0_irq(struct cs5535audio *cs5535au)
{
 u8 bm_stat;
 spin_lock(&cs5535au->reg_lock);
 bm_stat = cs_readb(cs5535au, ACC_BM0_STATUS);
 spin_unlock(&cs5535au->reg_lock);
 if (bm_stat & EOP) {
  snd_pcm_period_elapsed(cs5535au->playback_substream);
 } else {
  dev_err(cs5535au->card->dev,
   "unexpected bm0 irq src, bm_stat=%x\n",
   bm_stat);
 }
}
