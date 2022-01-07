
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int runtime; } ;


 int get_dma_ptr (int ,int,unsigned long) ;
 int memcpy (void*,int ,unsigned long) ;

__attribute__((used)) static int default_read_copy_kernel(struct snd_pcm_substream *substream,
        int channel, unsigned long hwoff,
        void *buf, unsigned long bytes)
{
 memcpy(buf, get_dma_ptr(substream->runtime, channel, hwoff), bytes);
 return 0;
}
