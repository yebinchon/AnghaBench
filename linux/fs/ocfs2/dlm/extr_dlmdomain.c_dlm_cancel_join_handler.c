
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct o2net_msg {scalar_t__ buf; } ;
struct dlm_ctxt {scalar_t__ joining_node; int spinlock; } ;
struct dlm_cancel_join {scalar_t__ node_idx; int name_len; int domain; } ;


 int BUG_ON (int) ;
 int DLM_LOCK_RES_OWNER_UNKNOWN ;
 struct dlm_ctxt* __dlm_lookup_domain_full (int ,int ) ;
 int __dlm_set_joining_node (struct dlm_ctxt*,int ) ;
 int dlm_domain_lock ;
 int mlog (int ,char*,scalar_t__,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int dlm_cancel_join_handler(struct o2net_msg *msg, u32 len, void *data,
       void **ret_data)
{
 struct dlm_cancel_join *cancel;
 struct dlm_ctxt *dlm = ((void*)0);

 cancel = (struct dlm_cancel_join *) msg->buf;

 mlog(0, "node %u cancels join on domain %s\n", cancel->node_idx,
    cancel->domain);

 spin_lock(&dlm_domain_lock);
 dlm = __dlm_lookup_domain_full(cancel->domain, cancel->name_len);

 if (dlm) {
  spin_lock(&dlm->spinlock);



  BUG_ON(dlm->joining_node != cancel->node_idx);
  __dlm_set_joining_node(dlm, DLM_LOCK_RES_OWNER_UNKNOWN);

  spin_unlock(&dlm->spinlock);
 }
 spin_unlock(&dlm_domain_lock);

 return 0;
}
