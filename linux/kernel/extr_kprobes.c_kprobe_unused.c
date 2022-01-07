
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kprobe {int list; } ;


 scalar_t__ kprobe_aggrprobe (struct kprobe*) ;
 scalar_t__ kprobe_disabled (struct kprobe*) ;
 scalar_t__ list_empty (int *) ;

__attribute__((used)) static inline int kprobe_unused(struct kprobe *p)
{
 return kprobe_aggrprobe(p) && kprobe_disabled(p) &&
        list_empty(&p->list);
}
