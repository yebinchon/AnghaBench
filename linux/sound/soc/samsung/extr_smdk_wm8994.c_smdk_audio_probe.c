
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct snd_soc_card {TYPE_4__* dev; } ;
struct smdk_wm8994_data {int dummy; } ;
struct TYPE_11__ {struct device_node* of_node; } ;
struct platform_device {TYPE_4__ dev; } ;
struct of_device_id {scalar_t__ data; } ;
struct device_node {int dummy; } ;
struct TYPE_10__ {TYPE_2__* cpus; TYPE_1__* platforms; } ;
struct TYPE_9__ {scalar_t__ of_node; int * dai_name; } ;
struct TYPE_8__ {scalar_t__ of_node; int * name; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int dev_err (TYPE_4__*,char*,...) ;
 struct smdk_wm8994_data* devm_kzalloc (TYPE_4__*,int,int ) ;
 int devm_snd_soc_register_card (TYPE_4__*,struct snd_soc_card*) ;
 struct of_device_id* of_match_device (int ,TYPE_4__*) ;
 int of_match_ptr (int ) ;
 scalar_t__ of_parse_phandle (struct device_node*,char*,int ) ;
 int platform_set_drvdata (struct platform_device*,struct smdk_wm8994_data*) ;
 int samsung_wm8994_of_match ;
 struct snd_soc_card smdk ;
 TYPE_3__* smdk_dai ;

__attribute__((used)) static int smdk_audio_probe(struct platform_device *pdev)
{
 int ret;
 struct device_node *np = pdev->dev.of_node;
 struct snd_soc_card *card = &smdk;
 struct smdk_wm8994_data *board;
 const struct of_device_id *id;

 card->dev = &pdev->dev;

 board = devm_kzalloc(&pdev->dev, sizeof(*board), GFP_KERNEL);
 if (!board)
  return -ENOMEM;

 if (np) {
  smdk_dai[0].cpus->dai_name = ((void*)0);
  smdk_dai[0].cpus->of_node = of_parse_phandle(np,
    "samsung,i2s-controller", 0);
  if (!smdk_dai[0].cpus->of_node) {
   dev_err(&pdev->dev,
      "Property 'samsung,i2s-controller' missing or invalid\n");
   ret = -EINVAL;
  }

  smdk_dai[0].platforms->name = ((void*)0);
  smdk_dai[0].platforms->of_node = smdk_dai[0].cpus->of_node;
 }

 id = of_match_device(of_match_ptr(samsung_wm8994_of_match), &pdev->dev);
 if (id)
  *board = *((struct smdk_wm8994_data *)id->data);

 platform_set_drvdata(pdev, board);

 ret = devm_snd_soc_register_card(&pdev->dev, card);

 if (ret)
  dev_err(&pdev->dev, "snd_soc_register_card() failed:%d\n", ret);

 return ret;
}
