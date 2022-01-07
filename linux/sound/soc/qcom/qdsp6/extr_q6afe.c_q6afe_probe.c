
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct q6afe {int port_list_lock; int port_list; struct device* dev; int lock; struct apr_device* apr; int ainfo; } ;
struct device {int of_node; } ;
struct apr_device {int svc_id; struct device dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int dev_set_drvdata (struct device*,struct q6afe*) ;
 struct q6afe* devm_kzalloc (struct device*,int,int ) ;
 int mutex_init (int *) ;
 int of_platform_populate (int ,int *,int *,struct device*) ;
 int q6core_get_svc_api_info (int ,int *) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int q6afe_probe(struct apr_device *adev)
{
 struct q6afe *afe;
 struct device *dev = &adev->dev;

 afe = devm_kzalloc(dev, sizeof(*afe), GFP_KERNEL);
 if (!afe)
  return -ENOMEM;

 q6core_get_svc_api_info(adev->svc_id, &afe->ainfo);
 afe->apr = adev;
 mutex_init(&afe->lock);
 afe->dev = dev;
 INIT_LIST_HEAD(&afe->port_list);
 spin_lock_init(&afe->port_list_lock);

 dev_set_drvdata(dev, afe);

 return of_platform_populate(dev->of_node, ((void*)0), ((void*)0), dev);
}
