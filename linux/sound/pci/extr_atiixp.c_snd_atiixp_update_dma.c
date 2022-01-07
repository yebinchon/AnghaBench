
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atiixp_dma {int substream; int running; } ;
struct atiixp {int dummy; } ;


 int snd_pcm_period_elapsed (int ) ;

__attribute__((used)) static void snd_atiixp_update_dma(struct atiixp *chip, struct atiixp_dma *dma)
{
 if (! dma->substream || ! dma->running)
  return;
 snd_pcm_period_elapsed(dma->substream);
}
