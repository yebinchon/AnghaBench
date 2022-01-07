
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kprobe {int * addr; } ;


 int __unregister_kprobe_bottom (struct kprobe*) ;
 scalar_t__ __unregister_kprobe_top (struct kprobe*) ;
 int kprobe_mutex ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int synchronize_rcu () ;

void unregister_kprobes(struct kprobe **kps, int num)
{
 int i;

 if (num <= 0)
  return;
 mutex_lock(&kprobe_mutex);
 for (i = 0; i < num; i++)
  if (__unregister_kprobe_top(kps[i]) < 0)
   kps[i]->addr = ((void*)0);
 mutex_unlock(&kprobe_mutex);

 synchronize_rcu();
 for (i = 0; i < num; i++)
  if (kps[i]->addr)
   __unregister_kprobe_bottom(kps[i]);
}
