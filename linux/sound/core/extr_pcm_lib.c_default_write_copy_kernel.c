
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int runtime; } ;


 int get_dma_ptr (int ,int,unsigned long) ;
 int memcpy (int ,void*,unsigned long) ;

__attribute__((used)) static int default_write_copy_kernel(struct snd_pcm_substream *substream,
         int channel, unsigned long hwoff,
         void *buf, unsigned long bytes)
{
 memcpy(get_dma_ptr(substream->runtime, channel, hwoff), buf, bytes);
 return 0;
}
