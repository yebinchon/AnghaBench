
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct snd_pcm_substream {TYPE_2__* runtime; } ;
struct TYPE_4__ {struct snd_pcm_substream* substream; int hw_buf; } ;
struct snd_cs46xx {int (* active_ctrl ) (struct snd_cs46xx*,int) ;scalar_t__ accept_valid; TYPE_1__ capt; int pci; } ;
struct TYPE_6__ {int info; } ;
struct TYPE_5__ {TYPE_3__ hw; } ;


 int ENOMEM ;
 int PAGE_SIZE ;
 int SNDRV_DMA_TYPE_DEV ;
 int SNDRV_PCM_HW_PARAM_PERIOD_BYTES ;
 int SNDRV_PCM_INFO_MMAP_VALID ;
 int hw_constraints_period_sizes ;
 TYPE_3__ snd_cs46xx_capture ;
 scalar_t__ snd_dma_alloc_pages (int ,int ,int ,int *) ;
 int snd_dma_pci_data (int ) ;
 int snd_pcm_hw_constraint_list (TYPE_2__*,int ,int ,int *) ;
 struct snd_cs46xx* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int stub1 (struct snd_cs46xx*,int) ;

__attribute__((used)) static int snd_cs46xx_capture_open(struct snd_pcm_substream *substream)
{
 struct snd_cs46xx *chip = snd_pcm_substream_chip(substream);

 if (snd_dma_alloc_pages(SNDRV_DMA_TYPE_DEV, snd_dma_pci_data(chip->pci),
    PAGE_SIZE, &chip->capt.hw_buf) < 0)
  return -ENOMEM;
 chip->capt.substream = substream;
 substream->runtime->hw = snd_cs46xx_capture;

 if (chip->accept_valid)
  substream->runtime->hw.info |= SNDRV_PCM_INFO_MMAP_VALID;

 chip->active_ctrl(chip, 1);






 return 0;
}
