
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stm32_i2s_data {struct snd_soc_dai_driver* dai_drv; } ;
struct snd_soc_dai_driver {int id; int capture; int playback; int * ops; int probe; } ;
struct platform_device {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct snd_soc_dai_driver* devm_kzalloc (int *,int,int ) ;
 int stm32_i2s_dai_init (int *,char*) ;
 int stm32_i2s_dai_probe ;
 int stm32_i2s_pcm_dai_ops ;

__attribute__((used)) static int stm32_i2s_dais_init(struct platform_device *pdev,
          struct stm32_i2s_data *i2s)
{
 struct snd_soc_dai_driver *dai_ptr;

 dai_ptr = devm_kzalloc(&pdev->dev, sizeof(struct snd_soc_dai_driver),
          GFP_KERNEL);
 if (!dai_ptr)
  return -ENOMEM;

 dai_ptr->probe = stm32_i2s_dai_probe;
 dai_ptr->ops = &stm32_i2s_pcm_dai_ops;
 dai_ptr->id = 1;
 stm32_i2s_dai_init(&dai_ptr->playback, "playback");
 stm32_i2s_dai_init(&dai_ptr->capture, "capture");
 i2s->dai_drv = dai_ptr;

 return 0;
}
