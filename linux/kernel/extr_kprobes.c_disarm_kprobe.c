
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kprobe {int dummy; } ;


 int __disarm_kprobe (struct kprobe*,int) ;
 int cpus_read_lock () ;
 int cpus_read_unlock () ;
 int disarm_kprobe_ftrace (struct kprobe*) ;
 int kprobe_ftrace (struct kprobe*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int text_mutex ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static int disarm_kprobe(struct kprobe *kp, bool reopt)
{
 if (unlikely(kprobe_ftrace(kp)))
  return disarm_kprobe_ftrace(kp);

 cpus_read_lock();
 mutex_lock(&text_mutex);
 __disarm_kprobe(kp, reopt);
 mutex_unlock(&text_mutex);
 cpus_read_unlock();

 return 0;
}
