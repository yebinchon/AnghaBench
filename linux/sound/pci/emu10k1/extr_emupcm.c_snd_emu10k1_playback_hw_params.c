
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {scalar_t__ dma_bytes; struct snd_emu10k1_pcm* private_data; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct snd_emu10k1_pcm {int start_addr; int * memblk; } ;
struct snd_emu10k1_memblk {int mapped_page; } ;
struct snd_emu10k1 {scalar_t__ iommu_workaround; } ;


 scalar_t__ EMUPAGESIZE ;
 int ENOMEM ;
 int PAGE_SHIFT ;
 size_t params_buffer_bytes (struct snd_pcm_hw_params*) ;
 int params_channels (struct snd_pcm_hw_params*) ;
 int * snd_emu10k1_alloc_pages (struct snd_emu10k1*,struct snd_pcm_substream*) ;
 int snd_emu10k1_free_pages (struct snd_emu10k1*,int *) ;
 int snd_emu10k1_pcm_channel_alloc (struct snd_emu10k1_pcm*,int ) ;
 int snd_pcm_lib_malloc_pages (struct snd_pcm_substream*,size_t) ;
 struct snd_emu10k1* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static int snd_emu10k1_playback_hw_params(struct snd_pcm_substream *substream,
       struct snd_pcm_hw_params *hw_params)
{
 struct snd_emu10k1 *emu = snd_pcm_substream_chip(substream);
 struct snd_pcm_runtime *runtime = substream->runtime;
 struct snd_emu10k1_pcm *epcm = runtime->private_data;
 size_t alloc_size;
 int err;

 if ((err = snd_emu10k1_pcm_channel_alloc(epcm, params_channels(hw_params))) < 0)
  return err;

 alloc_size = params_buffer_bytes(hw_params);
 if (emu->iommu_workaround)
  alloc_size += EMUPAGESIZE;
 err = snd_pcm_lib_malloc_pages(substream, alloc_size);
 if (err < 0)
  return err;
 if (emu->iommu_workaround && runtime->dma_bytes >= EMUPAGESIZE)
  runtime->dma_bytes -= EMUPAGESIZE;
 if (err > 0) {
  int mapped;
  if (epcm->memblk != ((void*)0))
   snd_emu10k1_free_pages(emu, epcm->memblk);
  epcm->memblk = snd_emu10k1_alloc_pages(emu, substream);
  epcm->start_addr = 0;
  if (! epcm->memblk)
   return -ENOMEM;
  mapped = ((struct snd_emu10k1_memblk *)epcm->memblk)->mapped_page;
  if (mapped < 0)
   return -ENOMEM;
  epcm->start_addr = mapped << PAGE_SHIFT;
 }
 return 0;
}
