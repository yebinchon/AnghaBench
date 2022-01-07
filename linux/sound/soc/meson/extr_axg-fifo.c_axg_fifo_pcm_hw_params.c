
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {unsigned int dma_addr; unsigned int dma_bytes; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct axg_fifo {int map; } ;
typedef unsigned int dma_addr_t ;


 unsigned int AXG_FIFO_BURST ;
 int CTRL0_INT_EN (int ) ;
 int FIFO_CTRL0 ;
 int FIFO_FINISH_ADDR ;
 int FIFO_INT_ADDR ;
 int FIFO_INT_COUNT_REPEAT ;
 int FIFO_START_ADDR ;
 struct axg_fifo* axg_fifo_data (struct snd_pcm_substream*) ;
 int params_buffer_bytes (struct snd_pcm_hw_params*) ;
 unsigned int params_period_bytes (struct snd_pcm_hw_params*) ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 int regmap_write (int ,int ,unsigned int) ;
 int snd_pcm_lib_malloc_pages (struct snd_pcm_substream*,int ) ;

__attribute__((used)) static int axg_fifo_pcm_hw_params(struct snd_pcm_substream *ss,
      struct snd_pcm_hw_params *params)
{
 struct snd_pcm_runtime *runtime = ss->runtime;
 struct axg_fifo *fifo = axg_fifo_data(ss);
 dma_addr_t end_ptr;
 unsigned int burst_num;
 int ret;

 ret = snd_pcm_lib_malloc_pages(ss, params_buffer_bytes(params));
 if (ret < 0)
  return ret;


 end_ptr = runtime->dma_addr + runtime->dma_bytes - AXG_FIFO_BURST;
 regmap_write(fifo->map, FIFO_START_ADDR, runtime->dma_addr);
 regmap_write(fifo->map, FIFO_FINISH_ADDR, end_ptr);


 burst_num = params_period_bytes(params) / AXG_FIFO_BURST;
 regmap_write(fifo->map, FIFO_INT_ADDR, burst_num);


 regmap_update_bits(fifo->map, FIFO_CTRL0,
      CTRL0_INT_EN(FIFO_INT_COUNT_REPEAT),
      CTRL0_INT_EN(FIFO_INT_COUNT_REPEAT));

 return 0;
}
