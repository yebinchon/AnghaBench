
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct platform_device {int dev; } ;
struct TYPE_3__ {int input_dev; } ;


 int alsa_card_pcsp_init (int *) ;
 TYPE_1__ pcsp_chip ;
 int pcspkr_input_init (int *,int *) ;
 int pcspkr_input_remove (int ) ;
 int platform_set_drvdata (struct platform_device*,TYPE_1__*) ;

__attribute__((used)) static int pcsp_probe(struct platform_device *dev)
{
 int err;

 err = pcspkr_input_init(&pcsp_chip.input_dev, &dev->dev);
 if (err < 0)
  return err;

 err = alsa_card_pcsp_init(&dev->dev);
 if (err < 0) {
  pcspkr_input_remove(pcsp_chip.input_dev);
  return err;
 }

 platform_set_drvdata(dev, &pcsp_chip);
 return 0;
}
