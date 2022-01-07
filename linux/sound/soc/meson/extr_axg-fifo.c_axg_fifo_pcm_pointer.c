
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {scalar_t__ dma_addr; } ;
struct axg_fifo {int map; } ;
typedef int snd_pcm_uframes_t ;


 int FIFO_STATUS2 ;
 struct axg_fifo* axg_fifo_data (struct snd_pcm_substream*) ;
 int bytes_to_frames (struct snd_pcm_runtime*,unsigned int) ;
 int regmap_read (int ,int ,unsigned int*) ;

__attribute__((used)) static snd_pcm_uframes_t axg_fifo_pcm_pointer(struct snd_pcm_substream *ss)
{
 struct axg_fifo *fifo = axg_fifo_data(ss);
 struct snd_pcm_runtime *runtime = ss->runtime;
 unsigned int addr;

 regmap_read(fifo->map, FIFO_STATUS2, &addr);

 return bytes_to_frames(runtime, addr - (unsigned int)runtime->dma_addr);
}
