
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct o2net_sock_container {int dummy; } ;
struct o2net_node {int nn_lock; struct o2net_sock_container* nn_sc; } ;


 int o2net_set_nn_state (struct o2net_node*,int *,int ,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void o2net_ensure_shutdown(struct o2net_node *nn,
              struct o2net_sock_container *sc,
       int err)
{
 spin_lock(&nn->nn_lock);
 if (nn->nn_sc == sc)
  o2net_set_nn_state(nn, ((void*)0), 0, err);
 spin_unlock(&nn->nn_lock);
}
