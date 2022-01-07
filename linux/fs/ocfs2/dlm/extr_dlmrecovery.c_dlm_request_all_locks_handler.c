
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct o2net_msg {scalar_t__ buf; } ;
struct TYPE_5__ {scalar_t__ dead_node; int reco_master; } ;
struct TYPE_6__ {TYPE_2__ ral; } ;
struct dlm_work_item {int list; TYPE_3__ u; } ;
struct dlm_lock_request {scalar_t__ dead_node; int node_idx; } ;
struct TYPE_4__ {scalar_t__ dead_node; } ;
struct dlm_ctxt {int dispatched_work; int dlm_worker; int work_lock; int work_list; TYPE_1__ reco; int name; } ;


 int BUG_ON (int) ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_NOFS ;
 int ML_ERROR ;
 scalar_t__ __get_free_page (int ) ;
 int dlm_grab (struct dlm_ctxt*) ;
 int dlm_init_work_item (struct dlm_ctxt*,struct dlm_work_item*,int ,char*) ;
 int dlm_print_reco_node_status (struct dlm_ctxt*) ;
 int dlm_put (struct dlm_ctxt*) ;
 int dlm_request_all_locks_worker ;
 int kfree (struct dlm_work_item*) ;
 struct dlm_work_item* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int mlog (int ,char*,int ,int ,scalar_t__,scalar_t__) ;
 int queue_work (int ,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int dlm_request_all_locks_handler(struct o2net_msg *msg, u32 len, void *data,
      void **ret_data)
{
 struct dlm_ctxt *dlm = data;
 struct dlm_lock_request *lr = (struct dlm_lock_request *)msg->buf;
 char *buf = ((void*)0);
 struct dlm_work_item *item = ((void*)0);

 if (!dlm_grab(dlm))
  return -EINVAL;

 if (lr->dead_node != dlm->reco.dead_node) {
  mlog(ML_ERROR, "%s: node %u sent dead_node=%u, but local "
       "dead_node is %u\n", dlm->name, lr->node_idx,
       lr->dead_node, dlm->reco.dead_node);
  dlm_print_reco_node_status(dlm);

  dlm_put(dlm);
  return -ENOMEM;
 }
 BUG_ON(lr->dead_node != dlm->reco.dead_node);

 item = kzalloc(sizeof(*item), GFP_NOFS);
 if (!item) {
  dlm_put(dlm);
  return -ENOMEM;
 }


 buf = (char *) __get_free_page(GFP_NOFS);
 if (!buf) {
  kfree(item);
  dlm_put(dlm);
  return -ENOMEM;
 }


 dlm_grab(dlm);
 dlm_init_work_item(dlm, item, dlm_request_all_locks_worker, buf);
 item->u.ral.reco_master = lr->node_idx;
 item->u.ral.dead_node = lr->dead_node;
 spin_lock(&dlm->work_lock);
 list_add_tail(&item->list, &dlm->work_list);
 spin_unlock(&dlm->work_lock);
 queue_work(dlm->dlm_worker, &dlm->dispatched_work);

 dlm_put(dlm);
 return 0;
}
