
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_dai {struct device* dev; } ;
struct fsl_micfil {int* channel_gain; int regmap; TYPE_1__* soc; int dma_params_rx; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int fifo_depth; } ;


 int MICFIL_CTRL2_QSEL_MASK ;
 int MICFIL_FIFO_CTRL_FIFOWMK (int ) ;
 int MICFIL_FIFO_CTRL_FIFOWMK_MASK ;
 unsigned int MICFIL_MEDIUM_QUALITY ;
 int REG_MICFIL_CTRL2 ;
 int REG_MICFIL_FIFO_CTRL ;
 int REG_MICFIL_OUT_CTRL ;
 int dev_err (struct device*,char*,...) ;
 struct fsl_micfil* dev_get_drvdata (struct device*) ;
 int regmap_update_bits (int ,int ,int ,unsigned int) ;
 int regmap_write (int ,int ,int) ;
 int snd_soc_dai_init_dma_data (struct snd_soc_dai*,int *,int *) ;
 int snd_soc_dai_set_drvdata (struct snd_soc_dai*,struct fsl_micfil*) ;

__attribute__((used)) static int fsl_micfil_dai_probe(struct snd_soc_dai *cpu_dai)
{
 struct fsl_micfil *micfil = dev_get_drvdata(cpu_dai->dev);
 struct device *dev = cpu_dai->dev;
 unsigned int val;
 int ret;
 int i;


 ret = regmap_update_bits(micfil->regmap, REG_MICFIL_CTRL2,
     MICFIL_CTRL2_QSEL_MASK, MICFIL_MEDIUM_QUALITY);
 if (ret) {
  dev_err(dev, "failed to set quality mode bits, reg 0x%X\n",
   REG_MICFIL_CTRL2);
  return ret;
 }


 regmap_write(micfil->regmap, REG_MICFIL_OUT_CTRL, 0x77777777);
 for (i = 0; i < 8; i++)
  micfil->channel_gain[i] = 0xF;

 snd_soc_dai_init_dma_data(cpu_dai, ((void*)0),
      &micfil->dma_params_rx);


 val = MICFIL_FIFO_CTRL_FIFOWMK(micfil->soc->fifo_depth) - 1;
 ret = regmap_update_bits(micfil->regmap, REG_MICFIL_FIFO_CTRL,
     MICFIL_FIFO_CTRL_FIFOWMK_MASK,
     val);
 if (ret) {
  dev_err(dev, "failed to set FIFOWMK\n");
  return ret;
 }

 snd_soc_dai_set_drvdata(cpu_dai, micfil);

 return 0;
}
