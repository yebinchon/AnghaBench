
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rfkill {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int CAP_NET_ADMIN ;
 int EINVAL ;
 int EPERM ;
 unsigned long RFKILL_USER_STATE_SOFT_BLOCKED ;
 unsigned long RFKILL_USER_STATE_UNBLOCKED ;
 int capable (int ) ;
 int kstrtoul (char const*,int ,unsigned long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rfkill_global_mutex ;
 int rfkill_set_block (struct rfkill*,int) ;
 struct rfkill* to_rfkill (struct device*) ;

__attribute__((used)) static ssize_t state_store(struct device *dev, struct device_attribute *attr,
      const char *buf, size_t count)
{
 struct rfkill *rfkill = to_rfkill(dev);
 unsigned long state;
 int err;

 if (!capable(CAP_NET_ADMIN))
  return -EPERM;

 err = kstrtoul(buf, 0, &state);
 if (err)
  return err;

 if (state != RFKILL_USER_STATE_SOFT_BLOCKED &&
     state != RFKILL_USER_STATE_UNBLOCKED)
  return -EINVAL;

 mutex_lock(&rfkill_global_mutex);
 rfkill_set_block(rfkill, state == RFKILL_USER_STATE_SOFT_BLOCKED);
 mutex_unlock(&rfkill_global_mutex);

 return count;
}
