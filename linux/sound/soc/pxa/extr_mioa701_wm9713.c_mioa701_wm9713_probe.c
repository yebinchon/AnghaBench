
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct platform_device {int dev; } ;
struct TYPE_3__ {int * dev; } ;


 int ENODEV ;
 int dev_warn (int *,char*) ;
 int devm_snd_soc_register_card (int *,TYPE_1__*) ;
 int machine_is_mioa701 () ;
 TYPE_1__ mioa701 ;

__attribute__((used)) static int mioa701_wm9713_probe(struct platform_device *pdev)
{
 int rc;

 if (!machine_is_mioa701())
  return -ENODEV;

 mioa701.dev = &pdev->dev;
 rc = devm_snd_soc_register_card(&pdev->dev, &mioa701);
 if (!rc)
  dev_warn(&pdev->dev, "Be warned that incorrect mixers/muxes setup will "
    "lead to overheating and possible destruction of your device."
    " Do not use without a good knowledge of mio's board design!\n");
 return rc;
}
