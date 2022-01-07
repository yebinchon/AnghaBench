
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kprobe {int dummy; } ;


 int unregister_kprobes (struct kprobe**,int) ;

void unregister_kprobe(struct kprobe *p)
{
 unregister_kprobes(&p, 1);
}
