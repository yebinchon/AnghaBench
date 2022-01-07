
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdsp {int pci; int playback_dma_buf; int capture_dma_buf; } ;


 int snd_hammerfall_free_buffer (int *,int ) ;

__attribute__((used)) static void snd_hdsp_free_buffers(struct hdsp *hdsp)
{
 snd_hammerfall_free_buffer(&hdsp->capture_dma_buf, hdsp->pci);
 snd_hammerfall_free_buffer(&hdsp->playback_dma_buf, hdsp->pci);
}
