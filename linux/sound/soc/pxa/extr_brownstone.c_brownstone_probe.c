
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct platform_device {int dev; } ;
struct TYPE_3__ {int * dev; } ;


 TYPE_1__ brownstone ;
 int dev_err (int *,char*,int) ;
 int devm_snd_soc_register_card (int *,TYPE_1__*) ;

__attribute__((used)) static int brownstone_probe(struct platform_device *pdev)
{
 int ret;

 brownstone.dev = &pdev->dev;
 ret = devm_snd_soc_register_card(&pdev->dev, &brownstone);
 if (ret)
  dev_err(&pdev->dev, "snd_soc_register_card() failed: %d\n",
    ret);
 return ret;
}
