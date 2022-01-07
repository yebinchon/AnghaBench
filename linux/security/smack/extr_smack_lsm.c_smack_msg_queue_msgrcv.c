
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct msg_msg {int dummy; } ;
struct kern_ipc_perm {int dummy; } ;


 int MAY_READWRITE ;
 int smk_curacc_msq (struct kern_ipc_perm*,int ) ;

__attribute__((used)) static int smack_msg_queue_msgrcv(struct kern_ipc_perm *isp, struct msg_msg *msg,
   struct task_struct *target, long type, int mode)
{
 return smk_curacc_msq(isp, MAY_READWRITE);
}
