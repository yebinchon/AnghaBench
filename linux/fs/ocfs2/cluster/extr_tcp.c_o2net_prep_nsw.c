
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct o2net_status_wait {int ns_id; scalar_t__ ns_status; int ns_sys_status; int ns_wq; int ns_node_item; } ;
struct o2net_node {int nn_lock; int nn_status_list; int nn_status_idr; } ;


 int GFP_ATOMIC ;
 int O2NET_ERR_NONE ;
 int idr_alloc (int *,struct o2net_status_wait*,int ,int ,int ) ;
 int init_waitqueue_head (int *) ;
 int list_add_tail (int *,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int o2net_prep_nsw(struct o2net_node *nn, struct o2net_status_wait *nsw)
{
 int ret;

 spin_lock(&nn->nn_lock);
 ret = idr_alloc(&nn->nn_status_idr, nsw, 0, 0, GFP_ATOMIC);
 if (ret >= 0) {
  nsw->ns_id = ret;
  list_add_tail(&nsw->ns_node_item, &nn->nn_status_list);
 }
 spin_unlock(&nn->nn_lock);
 if (ret < 0)
  return ret;

 init_waitqueue_head(&nsw->ns_wq);
 nsw->ns_sys_status = O2NET_ERR_NONE;
 nsw->ns_status = 0;
 return 0;
}
