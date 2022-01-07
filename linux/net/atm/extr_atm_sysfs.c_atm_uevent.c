
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobj_uevent_env {int dummy; } ;
struct device {int dummy; } ;
struct atm_dev {int number; int type; } ;


 int ENODEV ;
 int ENOMEM ;
 scalar_t__ add_uevent_var (struct kobj_uevent_env*,char*,int ,int ) ;
 struct atm_dev* to_atm_dev (struct device*) ;

__attribute__((used)) static int atm_uevent(struct device *cdev, struct kobj_uevent_env *env)
{
 struct atm_dev *adev;

 if (!cdev)
  return -ENODEV;

 adev = to_atm_dev(cdev);
 if (!adev)
  return -ENODEV;

 if (add_uevent_var(env, "NAME=%s%d", adev->type, adev->number))
  return -ENOMEM;

 return 0;
}
