
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int dma_addr; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct axg_fifo {int map; } ;


 int FIFO_INIT_ADDR ;
 struct axg_fifo* axg_fifo_data (struct snd_pcm_substream*) ;
 int axg_fifo_pcm_hw_params (struct snd_pcm_substream*,struct snd_pcm_hw_params*) ;
 int regmap_write (int ,int ,int ) ;

__attribute__((used)) static int g12a_fifo_pcm_hw_params(struct snd_pcm_substream *ss,
       struct snd_pcm_hw_params *params)
{
 struct axg_fifo *fifo = axg_fifo_data(ss);
 struct snd_pcm_runtime *runtime = ss->runtime;
 int ret;

 ret = axg_fifo_pcm_hw_params(ss, params);
 if (ret)
  return ret;


 regmap_write(fifo->map, FIFO_INIT_ADDR, runtime->dma_addr);

 return 0;
}
