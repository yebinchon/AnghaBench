
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_trident_voice {scalar_t__ foldback_chan; } ;
struct snd_trident {int reg_lock; } ;
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {struct snd_trident_voice* private_data; } ;


 scalar_t__ T4D_RCI ;
 int TRID_REG (struct snd_trident*,scalar_t__) ;
 int outb (int,int ) ;
 struct snd_trident* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int snd_trident_foldback_close(struct snd_pcm_substream *substream)
{
 struct snd_trident *trident = snd_pcm_substream_chip(substream);
 struct snd_trident_voice *voice;
 struct snd_pcm_runtime *runtime = substream->runtime;
 voice = runtime->private_data;


 spin_lock_irq(&trident->reg_lock);
 outb(0x00, TRID_REG(trident, T4D_RCI + voice->foldback_chan));
 spin_unlock_irq(&trident->reg_lock);
 return 0;
}
