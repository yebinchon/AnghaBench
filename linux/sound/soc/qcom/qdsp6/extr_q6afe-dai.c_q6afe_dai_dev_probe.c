
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct q6afe_dai_data {int dummy; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;


 int ARRAY_SIZE (int ) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int dev_set_drvdata (struct device*,struct q6afe_dai_data*) ;
 struct q6afe_dai_data* devm_kzalloc (struct device*,int,int ) ;
 int devm_snd_soc_register_component (struct device*,int *,int ,int ) ;
 int of_q6afe_parse_dai_data (struct device*,struct q6afe_dai_data*) ;
 int q6afe_dai_component ;
 int q6afe_dais ;

__attribute__((used)) static int q6afe_dai_dev_probe(struct platform_device *pdev)
{
 struct q6afe_dai_data *dai_data;
 struct device *dev = &pdev->dev;

 dai_data = devm_kzalloc(dev, sizeof(*dai_data), GFP_KERNEL);
 if (!dai_data)
  return -ENOMEM;

 dev_set_drvdata(dev, dai_data);

 of_q6afe_parse_dai_data(dev, dai_data);

 return devm_snd_soc_register_component(dev, &q6afe_dai_component,
       q6afe_dais, ARRAY_SIZE(q6afe_dais));
}
