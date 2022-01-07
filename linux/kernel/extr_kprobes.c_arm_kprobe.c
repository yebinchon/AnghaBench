
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kprobe {int dummy; } ;


 int __arm_kprobe (struct kprobe*) ;
 int arm_kprobe_ftrace (struct kprobe*) ;
 int cpus_read_lock () ;
 int cpus_read_unlock () ;
 int kprobe_ftrace (struct kprobe*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int text_mutex ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static int arm_kprobe(struct kprobe *kp)
{
 if (unlikely(kprobe_ftrace(kp)))
  return arm_kprobe_ftrace(kp);

 cpus_read_lock();
 mutex_lock(&text_mutex);
 __arm_kprobe(kp);
 mutex_unlock(&text_mutex);
 cpus_read_unlock();

 return 0;
}
