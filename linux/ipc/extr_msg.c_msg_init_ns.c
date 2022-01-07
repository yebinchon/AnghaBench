
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipc_namespace {int * ids; int msg_hdrs; int msg_bytes; int msg_ctlmni; int msg_ctlmnb; int msg_ctlmax; } ;


 size_t IPC_MSG_IDS ;
 int MSGMAX ;
 int MSGMNB ;
 int MSGMNI ;
 int atomic_set (int *,int ) ;
 int ipc_init_ids (int *) ;

void msg_init_ns(struct ipc_namespace *ns)
{
 ns->msg_ctlmax = MSGMAX;
 ns->msg_ctlmnb = MSGMNB;
 ns->msg_ctlmni = MSGMNI;

 atomic_set(&ns->msg_bytes, 0);
 atomic_set(&ns->msg_hdrs, 0);
 ipc_init_ids(&ns->ids[IPC_MSG_IDS]);
}
