
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {struct idma_ctrl* private_data; } ;
struct idma_ctrl {unsigned long start; int lock; } ;
typedef int snd_pcm_uframes_t ;
typedef unsigned long dma_addr_t ;


 int bytes_to_frames (struct snd_pcm_runtime*,unsigned long) ;
 int idma_getpos (unsigned long*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static snd_pcm_uframes_t
 idma_pointer(struct snd_pcm_substream *substream)
{
 struct snd_pcm_runtime *runtime = substream->runtime;
 struct idma_ctrl *prtd = runtime->private_data;
 dma_addr_t src;
 unsigned long res;

 spin_lock(&prtd->lock);

 idma_getpos(&src);
 res = src - prtd->start;

 spin_unlock(&prtd->lock);

 return bytes_to_frames(substream->runtime, res);
}
