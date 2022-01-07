
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {int dummy; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct axg_fifo {int map; } ;


 int CTRL0_TODDR_LSB_POS (scalar_t__) ;
 int CTRL0_TODDR_LSB_POS_MASK ;
 int CTRL0_TODDR_MSB_POS (scalar_t__) ;
 int CTRL0_TODDR_MSB_POS_MASK ;
 int CTRL0_TODDR_TYPE (unsigned int) ;
 int CTRL0_TODDR_TYPE_MASK ;
 int EINVAL ;
 int FIFO_CTRL0 ;
 scalar_t__ TODDR_MSB_POS ;
 int params_physical_width (struct snd_pcm_hw_params*) ;
 unsigned int params_width (struct snd_pcm_hw_params*) ;
 int regmap_update_bits (int ,int ,int,int) ;
 struct axg_fifo* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;

__attribute__((used)) static int axg_toddr_dai_hw_params(struct snd_pcm_substream *substream,
       struct snd_pcm_hw_params *params,
       struct snd_soc_dai *dai)
{
 struct axg_fifo *fifo = snd_soc_dai_get_drvdata(dai);
 unsigned int type, width;

 switch (params_physical_width(params)) {
 case 8:
  type = 0;
  break;
 case 16:
  type = 2;
  break;
 case 32:
  type = 4;
  break;
 default:
  return -EINVAL;
 }

 width = params_width(params);

 regmap_update_bits(fifo->map, FIFO_CTRL0,
      CTRL0_TODDR_TYPE_MASK |
      CTRL0_TODDR_MSB_POS_MASK |
      CTRL0_TODDR_LSB_POS_MASK,
      CTRL0_TODDR_TYPE(type) |
      CTRL0_TODDR_MSB_POS(TODDR_MSB_POS) |
      CTRL0_TODDR_LSB_POS(TODDR_MSB_POS - (width - 1)));

 return 0;
}
