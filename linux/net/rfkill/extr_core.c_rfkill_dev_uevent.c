
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rfkill {size_t type; int lock; int state; int name; } ;
struct kobj_uevent_env {int dummy; } ;
struct device {int dummy; } ;


 int add_uevent_var (struct kobj_uevent_env*,char*,int ) ;
 int * rfkill_types ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct rfkill* to_rfkill (struct device*) ;
 int user_state_from_blocked (int ) ;

__attribute__((used)) static int rfkill_dev_uevent(struct device *dev, struct kobj_uevent_env *env)
{
 struct rfkill *rfkill = to_rfkill(dev);
 unsigned long flags;
 u32 state;
 int error;

 error = add_uevent_var(env, "RFKILL_NAME=%s", rfkill->name);
 if (error)
  return error;
 error = add_uevent_var(env, "RFKILL_TYPE=%s",
          rfkill_types[rfkill->type]);
 if (error)
  return error;
 spin_lock_irqsave(&rfkill->lock, flags);
 state = rfkill->state;
 spin_unlock_irqrestore(&rfkill->lock, flags);
 error = add_uevent_var(env, "RFKILL_STATE=%d",
          user_state_from_blocked(state));
 return error;
}
