
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u16 ;
struct sock {int dummy; } ;
struct mgmt_pending_cmd {int list; struct sock* sk; void* param_len; int param; int index; void* opcode; } ;
struct hci_dev {int mgmt_pending; int id; } ;


 int GFP_KERNEL ;
 int kfree (struct mgmt_pending_cmd*) ;
 int kmemdup (void*,void*,int ) ;
 struct mgmt_pending_cmd* kzalloc (int,int ) ;
 int list_add (int *,int *) ;
 int sock_hold (struct sock*) ;

struct mgmt_pending_cmd *mgmt_pending_add(struct sock *sk, u16 opcode,
       struct hci_dev *hdev,
       void *data, u16 len)
{
 struct mgmt_pending_cmd *cmd;

 cmd = kzalloc(sizeof(*cmd), GFP_KERNEL);
 if (!cmd)
  return ((void*)0);

 cmd->opcode = opcode;
 cmd->index = hdev->id;

 cmd->param = kmemdup(data, len, GFP_KERNEL);
 if (!cmd->param) {
  kfree(cmd);
  return ((void*)0);
 }

 cmd->param_len = len;

 cmd->sk = sk;
 sock_hold(sk);

 list_add(&cmd->list, &hdev->mgmt_pending);

 return cmd;
}
