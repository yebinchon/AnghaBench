
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int runtime; } ;
struct device {int dummy; } ;
struct axg_fifo {int pclk; int arb; int map; int irq; } ;


 int AXG_FIFO_MIN_DEPTH ;
 int CTRL0_INT_EN (int ) ;
 int CTRL1_STATUS2_SEL (int ) ;
 int CTRL1_STATUS2_SEL_MASK ;
 int FIFO_CTRL0 ;
 int FIFO_CTRL1 ;
 int FIFO_INT_MASK ;
 int SNDRV_PCM_HW_PARAM_BUFFER_BYTES ;
 int SNDRV_PCM_HW_PARAM_PERIOD_BYTES ;
 int STATUS2_SEL_DDR_READ ;
 int __dma_enable (struct axg_fifo*,int) ;
 int axg_fifo_ack_irq (struct axg_fifo*,int ) ;
 struct axg_fifo* axg_fifo_data (struct snd_pcm_substream*) ;
 struct device* axg_fifo_dev (struct snd_pcm_substream*) ;
 int axg_fifo_hw ;
 int axg_fifo_pcm_irq_block ;
 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 int dev_name (struct device*) ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 int request_irq (int ,int ,int ,int ,struct snd_pcm_substream*) ;
 int reset_control_deassert (int ) ;
 int snd_pcm_hw_constraint_step (int ,int ,int ,int ) ;
 int snd_soc_set_runtime_hwparams (struct snd_pcm_substream*,int *) ;

__attribute__((used)) static int axg_fifo_pcm_open(struct snd_pcm_substream *ss)
{
 struct axg_fifo *fifo = axg_fifo_data(ss);
 struct device *dev = axg_fifo_dev(ss);
 int ret;

 snd_soc_set_runtime_hwparams(ss, &axg_fifo_hw);





 ret = snd_pcm_hw_constraint_step(ss->runtime, 0,
      SNDRV_PCM_HW_PARAM_BUFFER_BYTES,
      AXG_FIFO_MIN_DEPTH);
 if (ret)
  return ret;

 ret = snd_pcm_hw_constraint_step(ss->runtime, 0,
      SNDRV_PCM_HW_PARAM_PERIOD_BYTES,
      AXG_FIFO_MIN_DEPTH);
 if (ret)
  return ret;

 ret = request_irq(fifo->irq, axg_fifo_pcm_irq_block, 0,
     dev_name(dev), ss);
 if (ret)
  return ret;


 ret = clk_prepare_enable(fifo->pclk);
 if (ret)
  return ret;


 regmap_update_bits(fifo->map, FIFO_CTRL1,
      CTRL1_STATUS2_SEL_MASK,
      CTRL1_STATUS2_SEL(STATUS2_SEL_DDR_READ));


 __dma_enable(fifo, 0);


 regmap_update_bits(fifo->map, FIFO_CTRL0,
      CTRL0_INT_EN(FIFO_INT_MASK), 0);


 axg_fifo_ack_irq(fifo, FIFO_INT_MASK);


 ret = reset_control_deassert(fifo->arb);
 if (ret)
  clk_disable_unprepare(fifo->pclk);

 return ret;
}
