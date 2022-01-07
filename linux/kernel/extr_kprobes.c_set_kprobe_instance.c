
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kprobe {int dummy; } ;


 int __this_cpu_write (int ,struct kprobe*) ;
 int kprobe_instance ;

__attribute__((used)) static inline void set_kprobe_instance(struct kprobe *kp)
{
 __this_cpu_write(kprobe_instance, kp);
}
