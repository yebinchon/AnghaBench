
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct napi_struct {int napi_hash_node; int state; } ;


 int NAPI_STATE_HASHED ;
 int hlist_del_rcu (int *) ;
 int napi_hash_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;

bool napi_hash_del(struct napi_struct *napi)
{
 bool rcu_sync_needed = 0;

 spin_lock(&napi_hash_lock);

 if (test_and_clear_bit(NAPI_STATE_HASHED, &napi->state)) {
  rcu_sync_needed = 1;
  hlist_del_rcu(&napi->napi_hash_node);
 }
 spin_unlock(&napi_hash_lock);
 return rcu_sync_needed;
}
