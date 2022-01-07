
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct TYPE_4__ {int lock; struct device* dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int dev_set_drvdata (struct device*,TYPE_1__*) ;
 int devm_snd_soc_register_component (struct device*,int *,int *,int ) ;
 TYPE_1__* kzalloc (int,int ) ;
 int msm_soc_routing_component ;
 int mutex_init (int *) ;
 TYPE_1__* routing_data ;

__attribute__((used)) static int q6pcm_routing_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;

 routing_data = kzalloc(sizeof(*routing_data), GFP_KERNEL);
 if (!routing_data)
  return -ENOMEM;

 routing_data->dev = dev;

 mutex_init(&routing_data->lock);
 dev_set_drvdata(dev, routing_data);

 return devm_snd_soc_register_component(dev, &msm_soc_routing_component,
       ((void*)0), 0);
}
