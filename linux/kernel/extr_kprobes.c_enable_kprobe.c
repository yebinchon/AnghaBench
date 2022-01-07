
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kprobe {int flags; } ;


 int EINVAL ;
 int KPROBE_FLAG_DISABLED ;
 struct kprobe* __get_valid_kprobe (struct kprobe*) ;
 int arm_kprobe (struct kprobe*) ;
 scalar_t__ kprobe_disabled (struct kprobe*) ;
 scalar_t__ kprobe_gone (struct kprobe*) ;
 int kprobe_mutex ;
 int kprobes_all_disarmed ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ unlikely (int ) ;

int enable_kprobe(struct kprobe *kp)
{
 int ret = 0;
 struct kprobe *p;

 mutex_lock(&kprobe_mutex);


 p = __get_valid_kprobe(kp);
 if (unlikely(p == ((void*)0))) {
  ret = -EINVAL;
  goto out;
 }

 if (kprobe_gone(kp)) {

  ret = -EINVAL;
  goto out;
 }

 if (p != kp)
  kp->flags &= ~KPROBE_FLAG_DISABLED;

 if (!kprobes_all_disarmed && kprobe_disabled(p)) {
  p->flags &= ~KPROBE_FLAG_DISABLED;
  ret = arm_kprobe(p);
  if (ret)
   p->flags |= KPROBE_FLAG_DISABLED;
 }
out:
 mutex_unlock(&kprobe_mutex);
 return ret;
}
