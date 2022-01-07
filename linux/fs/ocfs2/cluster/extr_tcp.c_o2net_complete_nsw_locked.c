
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct o2net_status_wait {int ns_sys_status; int ns_wq; int ns_id; int ns_status; int ns_node_item; } ;
struct o2net_node {int nn_status_idr; int nn_lock; } ;
typedef int s32 ;
typedef enum o2net_system_error { ____Placeholder_o2net_system_error } o2net_system_error ;


 int assert_spin_locked (int *) ;
 int idr_remove (int *,int ) ;
 int list_del_init (int *) ;
 int list_empty (int *) ;
 int wake_up (int *) ;

__attribute__((used)) static void o2net_complete_nsw_locked(struct o2net_node *nn,
          struct o2net_status_wait *nsw,
          enum o2net_system_error sys_status,
          s32 status)
{
 assert_spin_locked(&nn->nn_lock);

 if (!list_empty(&nsw->ns_node_item)) {
  list_del_init(&nsw->ns_node_item);
  nsw->ns_sys_status = sys_status;
  nsw->ns_status = status;
  idr_remove(&nn->nn_status_idr, nsw->ns_id);
  wake_up(&nsw->ns_wq);
 }
}
