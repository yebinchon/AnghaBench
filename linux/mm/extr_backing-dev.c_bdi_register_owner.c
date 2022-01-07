
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int devt; } ;
struct backing_dev_info {struct device* owner; } ;


 int MAJOR (int ) ;
 int MINOR (int ) ;
 int WARN_ON (struct device*) ;
 int bdi_register (struct backing_dev_info*,char*,int ,int ) ;
 int get_device (struct device*) ;

int bdi_register_owner(struct backing_dev_info *bdi, struct device *owner)
{
 int rc;

 rc = bdi_register(bdi, "%u:%u", MAJOR(owner->devt), MINOR(owner->devt));
 if (rc)
  return rc;

 WARN_ON(bdi->owner);
 bdi->owner = owner;
 get_device(owner);
 return 0;
}
