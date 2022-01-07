
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ymfpci {int dummy; } ;
struct snd_pcm_substream {int dummy; } ;


 int snd_pcm_lib_free_pages (struct snd_pcm_substream*) ;
 struct snd_ymfpci* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int snd_ymfpci_irq_wait (struct snd_ymfpci*) ;

__attribute__((used)) static int snd_ymfpci_capture_hw_free(struct snd_pcm_substream *substream)
{
 struct snd_ymfpci *chip = snd_pcm_substream_chip(substream);


 snd_ymfpci_irq_wait(chip);
 return snd_pcm_lib_free_pages(substream);
}
