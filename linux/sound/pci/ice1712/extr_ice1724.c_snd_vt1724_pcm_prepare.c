
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vt1724_pcm_reg {scalar_t__ count; scalar_t__ size; scalar_t__ addr; } ;
struct snd_pcm_substream {TYPE_1__* runtime; } ;
struct snd_ice1712 {int reg_lock; scalar_t__ profi_port; } ;
struct TYPE_2__ {int dma_addr; struct vt1724_pcm_reg* private_data; } ;


 int outl (int ,scalar_t__) ;
 int outw (int,scalar_t__) ;
 int snd_pcm_lib_buffer_bytes (struct snd_pcm_substream*) ;
 int snd_pcm_lib_period_bytes (struct snd_pcm_substream*) ;
 struct snd_ice1712* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int snd_vt1724_pcm_prepare(struct snd_pcm_substream *substream)
{
 struct snd_ice1712 *ice = snd_pcm_substream_chip(substream);
 const struct vt1724_pcm_reg *reg = substream->runtime->private_data;

 spin_lock_irq(&ice->reg_lock);
 outl(substream->runtime->dma_addr, ice->profi_port + reg->addr);
 outw((snd_pcm_lib_buffer_bytes(substream) >> 2) - 1,
      ice->profi_port + reg->size);
 outw((snd_pcm_lib_period_bytes(substream) >> 2) - 1,
      ice->profi_port + reg->count);
 spin_unlock_irq(&ice->reg_lock);
 return 0;
}
