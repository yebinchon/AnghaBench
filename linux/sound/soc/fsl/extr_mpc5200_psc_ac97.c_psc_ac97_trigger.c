
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {TYPE_1__* pstr; } ;
struct psc_dma_stream {int ac97_slot_bits; } ;
struct psc_dma {int slots; TYPE_2__* psc_regs; int dev; } ;
struct TYPE_4__ {int ac97_slots; } ;
struct TYPE_3__ {int stream; } ;




 int dev_dbg (int ,char*,int ) ;
 int out_be32 (int *,int ) ;
 struct psc_dma* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;
 struct psc_dma_stream* to_psc_dma_stream (struct snd_pcm_substream*,struct psc_dma*) ;

__attribute__((used)) static int psc_ac97_trigger(struct snd_pcm_substream *substream, int cmd,
       struct snd_soc_dai *dai)
{
 struct psc_dma *psc_dma = snd_soc_dai_get_drvdata(dai);
 struct psc_dma_stream *s = to_psc_dma_stream(substream, psc_dma);

 switch (cmd) {
 case 129:
  dev_dbg(psc_dma->dev, "AC97 START: stream=%i\n",
   substream->pstr->stream);


  psc_dma->slots |= s->ac97_slot_bits;
  out_be32(&psc_dma->psc_regs->ac97_slots, psc_dma->slots);
  break;

 case 128:
  dev_dbg(psc_dma->dev, "AC97 STOP: stream=%i\n",
   substream->pstr->stream);


  psc_dma->slots &= ~(s->ac97_slot_bits);
  out_be32(&psc_dma->psc_regs->ac97_slots, psc_dma->slots);
  break;
 }
 return 0;
}
