
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kern_ipc_perm {int dummy; } ;
struct ipc_ids {int key_ht; } ;
typedef int key_t ;


 int ipc_kht_params ;
 int ipc_lock_object (struct kern_ipc_perm*) ;
 int rcu_read_lock () ;
 struct kern_ipc_perm* rhashtable_lookup_fast (int *,int *,int ) ;

__attribute__((used)) static struct kern_ipc_perm *ipc_findkey(struct ipc_ids *ids, key_t key)
{
 struct kern_ipc_perm *ipcp;

 ipcp = rhashtable_lookup_fast(&ids->key_ht, &key,
           ipc_kht_params);
 if (!ipcp)
  return ((void*)0);

 rcu_read_lock();
 ipc_lock_object(ipcp);
 return ipcp;
}
