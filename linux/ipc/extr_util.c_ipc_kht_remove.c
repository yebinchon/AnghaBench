
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kern_ipc_perm {scalar_t__ key; int khtnode; } ;
struct ipc_ids {int key_ht; } ;


 scalar_t__ IPC_PRIVATE ;
 int ipc_kht_params ;
 int rhashtable_remove_fast (int *,int *,int ) ;

__attribute__((used)) static void ipc_kht_remove(struct ipc_ids *ids, struct kern_ipc_perm *ipcp)
{
 if (ipcp->key != IPC_PRIVATE)
  rhashtable_remove_fast(&ids->key_ht, &ipcp->khtnode,
           ipc_kht_params);
}
