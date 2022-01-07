
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_rme9652 {int pci; int playback_dma_buf; int capture_dma_buf; } ;


 int snd_hammerfall_free_buffer (int *,int ) ;

__attribute__((used)) static void snd_rme9652_free_buffers(struct snd_rme9652 *rme9652)
{
 snd_hammerfall_free_buffer(&rme9652->capture_dma_buf, rme9652->pci);
 snd_hammerfall_free_buffer(&rme9652->playback_dma_buf, rme9652->pci);
}
