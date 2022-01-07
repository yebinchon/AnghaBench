
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kprobe {int dummy; } ;


 int arch_remove_kprobe (struct kprobe*) ;
 int kfree (struct kprobe*) ;

__attribute__((used)) static void free_aggr_kprobe(struct kprobe *p)
{
 arch_remove_kprobe(p);
 kfree(p);
}
