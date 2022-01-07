
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct o2net_msg {scalar_t__ buf; } ;
struct dlm_exit_domain {unsigned int node_idx; } ;
struct dlm_ctxt {int spinlock; int exit_domain_map; int name; } ;


 int dlm_grab (struct dlm_ctxt*) ;
 int dlm_put (struct dlm_ctxt*) ;
 int mlog (int ,char*,int ,unsigned int) ;
 int set_bit (unsigned int,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int dlm_begin_exit_domain_handler(struct o2net_msg *msg, u32 len,
      void *data, void **ret_data)
{
 struct dlm_ctxt *dlm = data;
 unsigned int node;
 struct dlm_exit_domain *exit_msg = (struct dlm_exit_domain *) msg->buf;

 if (!dlm_grab(dlm))
  return 0;

 node = exit_msg->node_idx;
 mlog(0, "%s: Node %u sent a begin exit domain message\n", dlm->name, node);

 spin_lock(&dlm->spinlock);
 set_bit(node, dlm->exit_domain_map);
 spin_unlock(&dlm->spinlock);

 dlm_put(dlm);

 return 0;
}
