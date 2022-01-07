
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct q6adm {int copps_list_lock; int copps_list; int matrix_map_wait; int lock; int ainfo; struct device* dev; struct apr_device* apr; } ;
struct device {int of_node; } ;
struct apr_device {int svc_id; struct device dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int dev_set_drvdata (struct device*,struct q6adm*) ;
 struct q6adm* devm_kzalloc (struct device*,int,int ) ;
 int init_waitqueue_head (int *) ;
 int mutex_init (int *) ;
 int of_platform_populate (int ,int *,int *,struct device*) ;
 int q6core_get_svc_api_info (int ,int *) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int q6adm_probe(struct apr_device *adev)
{
 struct device *dev = &adev->dev;
 struct q6adm *adm;

 adm = devm_kzalloc(&adev->dev, sizeof(*adm), GFP_KERNEL);
 if (!adm)
  return -ENOMEM;

 adm->apr = adev;
 dev_set_drvdata(&adev->dev, adm);
 adm->dev = dev;
 q6core_get_svc_api_info(adev->svc_id, &adm->ainfo);
 mutex_init(&adm->lock);
 init_waitqueue_head(&adm->matrix_map_wait);

 INIT_LIST_HEAD(&adm->copps_list);
 spin_lock_init(&adm->copps_list_lock);

 return of_platform_populate(dev->of_node, ((void*)0), ((void*)0), dev);
}
