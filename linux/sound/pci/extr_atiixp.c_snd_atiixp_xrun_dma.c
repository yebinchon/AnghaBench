
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct atiixp_dma {int substream; TYPE_2__* ops; int running; } ;
struct atiixp {TYPE_1__* card; } ;
struct TYPE_4__ {int type; } ;
struct TYPE_3__ {int dev; } ;


 int dev_dbg (int ,char*,int ) ;
 int snd_pcm_stop_xrun (int ) ;

__attribute__((used)) static void snd_atiixp_xrun_dma(struct atiixp *chip, struct atiixp_dma *dma)
{
 if (! dma->substream || ! dma->running)
  return;
 dev_dbg(chip->card->dev, "XRUN detected (DMA %d)\n", dma->ops->type);
 snd_pcm_stop_xrun(dma->substream);
}
