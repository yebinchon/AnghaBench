
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct o2net_status_wait {int ns_node_item; } ;
struct o2net_node {int nn_lock; } ;


 int list_empty (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int o2net_nsw_completed(struct o2net_node *nn,
          struct o2net_status_wait *nsw)
{
 int completed;
 spin_lock(&nn->nn_lock);
 completed = list_empty(&nsw->ns_node_item);
 spin_unlock(&nn->nn_lock);
 return completed;
}
