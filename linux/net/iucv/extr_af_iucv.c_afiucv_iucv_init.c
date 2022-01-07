
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct device {int dummy; } ;
struct TYPE_12__ {int bus; } ;
struct TYPE_11__ {int (* iucv_register ) (int *,int ) ;int (* iucv_unregister ) (int *,int ) ;int root; int bus; } ;
struct TYPE_10__ {void (* release ) (struct device*) ;TYPE_4__* driver; int parent; int bus; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 TYPE_1__* af_iucv_dev ;
 TYPE_4__ af_iucv_driver ;
 int af_iucv_handler ;
 int dev_set_name (TYPE_1__*,char*) ;
 int device_register (TYPE_1__*) ;
 int driver_register (TYPE_4__*) ;
 int driver_unregister (TYPE_4__*) ;
 scalar_t__ kfree ;
 TYPE_1__* kzalloc (int,int ) ;
 TYPE_2__* pr_iucv ;
 int put_device (TYPE_1__*) ;
 int stub1 (int *,int ) ;
 int stub2 (int *,int ) ;

__attribute__((used)) static int afiucv_iucv_init(void)
{
 int err;

 err = pr_iucv->iucv_register(&af_iucv_handler, 0);
 if (err)
  goto out;

 af_iucv_driver.bus = pr_iucv->bus;
 err = driver_register(&af_iucv_driver);
 if (err)
  goto out_iucv;
 af_iucv_dev = kzalloc(sizeof(struct device), GFP_KERNEL);
 if (!af_iucv_dev) {
  err = -ENOMEM;
  goto out_driver;
 }
 dev_set_name(af_iucv_dev, "af_iucv");
 af_iucv_dev->bus = pr_iucv->bus;
 af_iucv_dev->parent = pr_iucv->root;
 af_iucv_dev->release = (void (*)(struct device *))kfree;
 af_iucv_dev->driver = &af_iucv_driver;
 err = device_register(af_iucv_dev);
 if (err)
  goto out_iucv_dev;
 return 0;

out_iucv_dev:
 put_device(af_iucv_dev);
out_driver:
 driver_unregister(&af_iucv_driver);
out_iucv:
 pr_iucv->iucv_unregister(&af_iucv_handler, 0);
out:
 return err;
}
