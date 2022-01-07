
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kprobe {scalar_t__ post_handler; int list; } ;


 scalar_t__ aggr_post_handler ;
 int list_add_rcu (int *,int *) ;
 int unoptimize_kprobe (struct kprobe*,int) ;

__attribute__((used)) static int add_new_kprobe(struct kprobe *ap, struct kprobe *p)
{
 if (p->post_handler)
  unoptimize_kprobe(ap, 1);

 list_add_rcu(&p->list, &ap->list);
 if (p->post_handler && !ap->post_handler)
  ap->post_handler = aggr_post_handler;

 return 0;
}
