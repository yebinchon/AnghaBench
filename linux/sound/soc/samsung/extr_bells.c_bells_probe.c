
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct platform_device {size_t id; int dev; } ;
struct TYPE_3__ {int name; int * dev; } ;


 TYPE_1__* bells_cards ;
 int dev_err (int *,char*,int ,int) ;
 int devm_snd_soc_register_card (int *,TYPE_1__*) ;

__attribute__((used)) static int bells_probe(struct platform_device *pdev)
{
 int ret;

 bells_cards[pdev->id].dev = &pdev->dev;

 ret = devm_snd_soc_register_card(&pdev->dev, &bells_cards[pdev->id]);
 if (ret)
  dev_err(&pdev->dev,
   "snd_soc_register_card(%s) failed: %d\n",
   bells_cards[pdev->id].name, ret);

 return ret;
}
