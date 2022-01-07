
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {TYPE_1__* runtime; } ;
struct atiixp_dma {size_t ac97_pcm_type; scalar_t__ pcm_open_flag; } ;
struct atiixp {struct ac97_pcm** pcms; } ;
struct ac97_pcm {int dummy; } ;
struct TYPE_2__ {struct atiixp_dma* private_data; } ;


 int atiixp_clear_dma_packets (struct atiixp*,struct atiixp_dma*,struct snd_pcm_substream*) ;
 int snd_ac97_pcm_close (struct ac97_pcm*) ;
 int snd_pcm_lib_free_pages (struct snd_pcm_substream*) ;
 struct atiixp* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static int snd_atiixp_pcm_hw_free(struct snd_pcm_substream *substream)
{
 struct atiixp *chip = snd_pcm_substream_chip(substream);
 struct atiixp_dma *dma = substream->runtime->private_data;

 if (dma->pcm_open_flag) {
  struct ac97_pcm *pcm = chip->pcms[dma->ac97_pcm_type];
  snd_ac97_pcm_close(pcm);
  dma->pcm_open_flag = 0;
 }
 atiixp_clear_dma_packets(chip, dma, substream);
 snd_pcm_lib_free_pages(substream);
 return 0;
}
