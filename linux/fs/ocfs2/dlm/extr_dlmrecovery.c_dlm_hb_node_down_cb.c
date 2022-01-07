
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct o2nm_node {int dummy; } ;
struct dlm_ctxt {int spinlock; int domain_map; } ;


 int __dlm_hb_node_down (struct dlm_ctxt*,int) ;
 int dlm_fire_domain_eviction_callbacks (struct dlm_ctxt*,int) ;
 int dlm_grab (struct dlm_ctxt*) ;
 int dlm_put (struct dlm_ctxt*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ test_bit (int,int ) ;

void dlm_hb_node_down_cb(struct o2nm_node *node, int idx, void *data)
{
 struct dlm_ctxt *dlm = data;

 if (!dlm_grab(dlm))
  return;





 if (test_bit(idx, dlm->domain_map))
  dlm_fire_domain_eviction_callbacks(dlm, idx);

 spin_lock(&dlm->spinlock);
 __dlm_hb_node_down(dlm, idx);
 spin_unlock(&dlm->spinlock);

 dlm_put(dlm);
}
