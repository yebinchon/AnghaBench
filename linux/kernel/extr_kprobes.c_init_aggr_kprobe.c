
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kprobe {int flags; int hlist; int list; scalar_t__ post_handler; int fault_handler; int pre_handler; int addr; } ;


 int INIT_HLIST_NODE (int *) ;
 int INIT_LIST_HEAD (int *) ;
 int KPROBE_FLAG_OPTIMIZED ;
 int aggr_fault_handler ;
 scalar_t__ aggr_post_handler ;
 int aggr_pre_handler ;
 int copy_kprobe (struct kprobe*,struct kprobe*) ;
 int flush_insn_slot (struct kprobe*) ;
 int hlist_replace_rcu (int *,int *) ;
 int kprobe_gone (struct kprobe*) ;
 int list_add_rcu (int *,int *) ;

__attribute__((used)) static void init_aggr_kprobe(struct kprobe *ap, struct kprobe *p)
{

 copy_kprobe(p, ap);
 flush_insn_slot(ap);
 ap->addr = p->addr;
 ap->flags = p->flags & ~KPROBE_FLAG_OPTIMIZED;
 ap->pre_handler = aggr_pre_handler;
 ap->fault_handler = aggr_fault_handler;

 if (p->post_handler && !kprobe_gone(p))
  ap->post_handler = aggr_post_handler;

 INIT_LIST_HEAD(&ap->list);
 INIT_HLIST_NODE(&ap->hlist);

 list_add_rcu(&p->list, &ap->list);
 hlist_replace_rcu(&p->hlist, &ap->hlist);
}
