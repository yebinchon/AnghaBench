
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct q6asm {int slock; int mem_wait; struct apr_device* adev; struct device* dev; int ainfo; } ;
struct device {int of_node; } ;
struct apr_device {int svc_id; struct device dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int dev_set_drvdata (struct device*,struct q6asm*) ;
 struct q6asm* devm_kzalloc (struct device*,int,int ) ;
 int init_waitqueue_head (int *) ;
 int of_platform_populate (int ,int *,int *,struct device*) ;
 int q6core_get_svc_api_info (int ,int *) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int q6asm_probe(struct apr_device *adev)
{
 struct device *dev = &adev->dev;
 struct q6asm *q6asm;

 q6asm = devm_kzalloc(dev, sizeof(*q6asm), GFP_KERNEL);
 if (!q6asm)
  return -ENOMEM;

 q6core_get_svc_api_info(adev->svc_id, &q6asm->ainfo);

 q6asm->dev = dev;
 q6asm->adev = adev;
 init_waitqueue_head(&q6asm->mem_wait);
 spin_lock_init(&q6asm->slock);
 dev_set_drvdata(dev, q6asm);

 return of_platform_populate(dev->of_node, ((void*)0), ((void*)0), dev);
}
