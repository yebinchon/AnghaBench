
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int devnode; } ;


 scalar_t__ IS_ERR (struct device*) ;
 int MKDEV (scalar_t__,int ) ;
 int PMSG_NAME ;
 int THIS_MODULE ;
 struct device* class_create (int ,int ) ;
 int class_destroy (struct device*) ;
 struct device* device_create (struct device*,int *,int ,int *,char*,int ,int ) ;
 struct device* pmsg_class ;
 int pmsg_devnode ;
 int pmsg_fops ;
 scalar_t__ pmsg_major ;
 int pr_err (char*) ;
 scalar_t__ register_chrdev (int ,int ,int *) ;
 int unregister_chrdev (scalar_t__,int ) ;

void pstore_register_pmsg(void)
{
 struct device *pmsg_device;

 pmsg_major = register_chrdev(0, PMSG_NAME, &pmsg_fops);
 if (pmsg_major < 0) {
  pr_err("register_chrdev failed\n");
  goto err;
 }

 pmsg_class = class_create(THIS_MODULE, PMSG_NAME);
 if (IS_ERR(pmsg_class)) {
  pr_err("device class file already in use\n");
  goto err_class;
 }
 pmsg_class->devnode = pmsg_devnode;

 pmsg_device = device_create(pmsg_class, ((void*)0), MKDEV(pmsg_major, 0),
     ((void*)0), "%s%d", PMSG_NAME, 0);
 if (IS_ERR(pmsg_device)) {
  pr_err("failed to create device\n");
  goto err_device;
 }
 return;

err_device:
 class_destroy(pmsg_class);
err_class:
 unregister_chrdev(pmsg_major, PMSG_NAME);
err:
 return;
}
