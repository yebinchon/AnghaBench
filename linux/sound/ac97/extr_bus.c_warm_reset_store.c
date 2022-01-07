
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct ac97_controller {TYPE_1__* ops; } ;
typedef size_t ssize_t ;
struct TYPE_2__ {int (* warm_reset ) (struct ac97_controller*) ;} ;


 size_t ENODEV ;
 int ac97_controllers_mutex ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct ac97_controller*) ;
 struct ac97_controller* to_ac97_controller (struct device*) ;

__attribute__((used)) static ssize_t warm_reset_store(struct device *dev,
    struct device_attribute *attr, const char *buf,
    size_t len)
{
 struct ac97_controller *ac97_ctrl;

 if (!dev)
  return -ENODEV;

 mutex_lock(&ac97_controllers_mutex);
 ac97_ctrl = to_ac97_controller(dev);
 ac97_ctrl->ops->warm_reset(ac97_ctrl);
 mutex_unlock(&ac97_controllers_mutex);
 return len;
}
