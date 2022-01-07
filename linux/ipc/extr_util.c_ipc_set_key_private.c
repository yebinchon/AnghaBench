
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kern_ipc_perm {int key; } ;
struct ipc_ids {int dummy; } ;


 int IPC_PRIVATE ;
 int ipc_kht_remove (struct ipc_ids*,struct kern_ipc_perm*) ;

void ipc_set_key_private(struct ipc_ids *ids, struct kern_ipc_perm *ipcp)
{
 ipc_kht_remove(ids, ipcp);
 ipcp->key = IPC_PRIVATE;
}
