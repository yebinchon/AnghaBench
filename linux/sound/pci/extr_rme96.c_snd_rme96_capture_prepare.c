
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;
struct rme96 {int lock; scalar_t__ iobase; } ;


 scalar_t__ RME96_IO_RESET_REC_POS ;
 scalar_t__ RME96_ISRECORDING (struct rme96*) ;
 int RME96_STOP_CAPTURE ;
 struct rme96* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int snd_rme96_trigger (struct rme96*,int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int
snd_rme96_capture_prepare(struct snd_pcm_substream *substream)
{
 struct rme96 *rme96 = snd_pcm_substream_chip(substream);

 spin_lock_irq(&rme96->lock);
 if (RME96_ISRECORDING(rme96)) {
  snd_rme96_trigger(rme96, RME96_STOP_CAPTURE);
 }
 writel(0, rme96->iobase + RME96_IO_RESET_REC_POS);
 spin_unlock_irq(&rme96->lock);
 return 0;
}
