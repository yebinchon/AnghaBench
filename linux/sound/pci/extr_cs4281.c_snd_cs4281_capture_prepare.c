
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {struct cs4281_dma* private_data; } ;
struct cs4281_dma {int dummy; } ;
struct cs4281 {int reg_lock; } ;


 int snd_cs4281_mode (struct cs4281*,struct cs4281_dma*,struct snd_pcm_runtime*,int,int) ;
 struct cs4281* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int snd_cs4281_capture_prepare(struct snd_pcm_substream *substream)
{
 struct snd_pcm_runtime *runtime = substream->runtime;
 struct cs4281_dma *dma = runtime->private_data;
 struct cs4281 *chip = snd_pcm_substream_chip(substream);

 spin_lock_irq(&chip->reg_lock);
 snd_cs4281_mode(chip, dma, runtime, 1, 1);
 spin_unlock_irq(&chip->reg_lock);
 return 0;
}
