
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {int dummy; } ;
struct axg_fifo {int map; int pclk; } ;


 int AXG_FIFO_MIN_CNT ;
 int CTRL0_TODDR_EXT_SIGNED ;
 int CTRL0_TODDR_PP_MODE ;
 int CTRL0_TODDR_SEL_RESAMPLE ;
 int CTRL1_THRESHOLD (unsigned int) ;
 int CTRL1_THRESHOLD_MASK ;
 int FIFO_CTRL0 ;
 int FIFO_CTRL1 ;
 int clk_prepare_enable (int ) ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 struct axg_fifo* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;

__attribute__((used)) static int axg_toddr_dai_startup(struct snd_pcm_substream *substream,
     struct snd_soc_dai *dai)
{
 struct axg_fifo *fifo = snd_soc_dai_get_drvdata(dai);
 unsigned int fifo_threshold;
 int ret;


 ret = clk_prepare_enable(fifo->pclk);
 if (ret)
  return ret;


 regmap_update_bits(fifo->map, FIFO_CTRL0, CTRL0_TODDR_SEL_RESAMPLE, 0);


 regmap_update_bits(fifo->map, FIFO_CTRL0, CTRL0_TODDR_EXT_SIGNED,
      CTRL0_TODDR_EXT_SIGNED);


 regmap_update_bits(fifo->map, FIFO_CTRL0, CTRL0_TODDR_PP_MODE, 0);


 fifo_threshold = AXG_FIFO_MIN_CNT - 1;
 regmap_update_bits(fifo->map, FIFO_CTRL1, CTRL1_THRESHOLD_MASK,
      CTRL1_THRESHOLD(fifo_threshold));

 return 0;
}
