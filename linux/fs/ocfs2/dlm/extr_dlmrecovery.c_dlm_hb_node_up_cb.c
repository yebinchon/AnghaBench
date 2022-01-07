
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct o2nm_node {int dummy; } ;
struct dlm_ctxt {int spinlock; int live_nodes_map; } ;


 int dlm_grab (struct dlm_ctxt*) ;
 int dlm_put (struct dlm_ctxt*) ;
 int set_bit (int,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void dlm_hb_node_up_cb(struct o2nm_node *node, int idx, void *data)
{
 struct dlm_ctxt *dlm = data;

 if (!dlm_grab(dlm))
  return;

 spin_lock(&dlm->spinlock);
 set_bit(idx, dlm->live_nodes_map);


 spin_unlock(&dlm->spinlock);

 dlm_put(dlm);
}
