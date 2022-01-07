
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct snd_pcm_substream {TYPE_1__* runtime; } ;
struct snd_intelhad {int bd_head; int pcmbuf_filled; int period_bytes; int num_bds; } ;
struct TYPE_2__ {int dma_addr; int periods; int no_period_wakeup; } ;


 int AUD_BUF_ADDR (int) ;
 int AUD_BUF_INTR_EN ;
 int AUD_BUF_LEN (int) ;
 int AUD_BUF_VALID ;
 int had_write_register (struct snd_intelhad*,int ,int) ;

__attribute__((used)) static void had_prog_bd(struct snd_pcm_substream *substream,
   struct snd_intelhad *intelhaddata)
{
 int idx = intelhaddata->bd_head;
 int ofs = intelhaddata->pcmbuf_filled * intelhaddata->period_bytes;
 u32 addr = substream->runtime->dma_addr + ofs;

 addr |= AUD_BUF_VALID;
 if (!substream->runtime->no_period_wakeup)
  addr |= AUD_BUF_INTR_EN;
 had_write_register(intelhaddata, AUD_BUF_ADDR(idx), addr);
 had_write_register(intelhaddata, AUD_BUF_LEN(idx),
      intelhaddata->period_bytes);


 intelhaddata->bd_head++;
 intelhaddata->bd_head %= intelhaddata->num_bds;
 intelhaddata->pcmbuf_filled++;
 intelhaddata->pcmbuf_filled %= substream->runtime->periods;
}
