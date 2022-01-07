
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct o2net_sock_container {int sc_kref; } ;
struct o2net_node {int nn_persistent_error; int nn_lock; struct o2net_sock_container* nn_sc; scalar_t__ nn_sc_valid; } ;


 int kref_get (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int o2net_tx_can_proceed(struct o2net_node *nn,
           struct o2net_sock_container **sc_ret,
    int *error)
{
 int ret = 0;

 spin_lock(&nn->nn_lock);
 if (nn->nn_persistent_error) {
  ret = 1;
  *sc_ret = ((void*)0);
  *error = nn->nn_persistent_error;
 } else if (nn->nn_sc_valid) {
  kref_get(&nn->nn_sc->sc_kref);

  ret = 1;
  *sc_ret = nn->nn_sc;
  *error = 0;
 }
 spin_unlock(&nn->nn_lock);

 return ret;
}
