
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __this_cpu_write (int ,int *) ;
 int kprobe_instance ;

__attribute__((used)) static inline void reset_kprobe_instance(void)
{
 __this_cpu_write(kprobe_instance, ((void*)0));
}
