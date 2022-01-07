
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kretprobe_instance {int hlist; struct kretprobe* rp; } ;
struct hlist_head {int dummy; } ;
struct kretprobe {int lock; struct hlist_head free_instances; } ;


 int INIT_HLIST_NODE (int *) ;
 int hlist_add_head (int *,struct hlist_head*) ;
 int hlist_del (int *) ;
 scalar_t__ likely (struct kretprobe*) ;
 int raw_spin_lock (int *) ;
 int raw_spin_unlock (int *) ;

void recycle_rp_inst(struct kretprobe_instance *ri,
       struct hlist_head *head)
{
 struct kretprobe *rp = ri->rp;


 hlist_del(&ri->hlist);
 INIT_HLIST_NODE(&ri->hlist);
 if (likely(rp)) {
  raw_spin_lock(&rp->lock);
  hlist_add_head(&ri->hlist, &rp->free_instances);
  raw_spin_unlock(&rp->lock);
 } else

  hlist_add_head(&ri->hlist, head);
}
