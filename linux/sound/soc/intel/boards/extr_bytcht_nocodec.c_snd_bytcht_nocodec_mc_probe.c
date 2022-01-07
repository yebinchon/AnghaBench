
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct platform_device {int dev; } ;
struct TYPE_4__ {int * dev; } ;


 TYPE_1__ bytcht_nocodec_card ;
 int dev_err (int *,char*,int) ;
 int devm_snd_soc_register_card (int *,TYPE_1__*) ;
 int platform_set_drvdata (struct platform_device*,TYPE_1__*) ;

__attribute__((used)) static int snd_bytcht_nocodec_mc_probe(struct platform_device *pdev)
{
 int ret_val = 0;


 bytcht_nocodec_card.dev = &pdev->dev;

 ret_val = devm_snd_soc_register_card(&pdev->dev, &bytcht_nocodec_card);

 if (ret_val) {
  dev_err(&pdev->dev, "devm_snd_soc_register_card failed %d\n",
   ret_val);
  return ret_val;
 }
 platform_set_drvdata(pdev, &bytcht_nocodec_card);
 return ret_val;
}
