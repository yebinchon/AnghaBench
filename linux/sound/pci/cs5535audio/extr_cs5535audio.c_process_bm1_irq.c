
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct cs5535audio {int capture_substream; int reg_lock; } ;


 int ACC_BM1_STATUS ;
 int EOP ;
 int cs_readb (struct cs5535audio*,int ) ;
 int snd_pcm_period_elapsed (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void process_bm1_irq(struct cs5535audio *cs5535au)
{
 u8 bm_stat;
 spin_lock(&cs5535au->reg_lock);
 bm_stat = cs_readb(cs5535au, ACC_BM1_STATUS);
 spin_unlock(&cs5535au->reg_lock);
 if (bm_stat & EOP)
  snd_pcm_period_elapsed(cs5535au->capture_substream);
}
