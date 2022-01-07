
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_card {int * dev; } ;
struct platform_device {int dev; } ;


 int dev_dbg (int *,char*) ;
 int dev_err (int *,char*,int) ;
 int device_property_read_u32 (int *,char*,scalar_t__*) ;
 int devm_snd_soc_register_card (int *,struct snd_soc_card*) ;
 scalar_t__ dmic_wakeup_delay ;
 struct snd_soc_card rockchip_sound_card ;
 int rockchip_sound_of_parse_dais (int *,struct snd_soc_card*) ;

__attribute__((used)) static int rockchip_sound_probe(struct platform_device *pdev)
{
 struct snd_soc_card *card = &rockchip_sound_card;
 int ret;

 ret = rockchip_sound_of_parse_dais(&pdev->dev, card);
 if (ret < 0) {
  dev_err(&pdev->dev, "Failed to parse dais: %d\n", ret);
  return ret;
 }


 ret = device_property_read_u32(&pdev->dev, "dmic-wakeup-delay-ms",
     &dmic_wakeup_delay);
 if (ret) {
  dmic_wakeup_delay = 0;
  dev_dbg(&pdev->dev,
   "no optional property 'dmic-wakeup-delay-ms' found, default: no delay\n");
 }

 card->dev = &pdev->dev;
 return devm_snd_soc_register_card(&pdev->dev, card);
}
