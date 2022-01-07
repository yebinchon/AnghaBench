
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mgmt_pending_cmd {int * sk; int list; int opcode; } ;
struct cmd_lookup {int * sk; int hdev; } ;


 int list_del (int *) ;
 int mgmt_pending_free (struct mgmt_pending_cmd*) ;
 int send_settings_rsp (int *,int ,int ) ;
 int sock_hold (int *) ;

__attribute__((used)) static void settings_rsp(struct mgmt_pending_cmd *cmd, void *data)
{
 struct cmd_lookup *match = data;

 send_settings_rsp(cmd->sk, cmd->opcode, match->hdev);

 list_del(&cmd->list);

 if (match->sk == ((void*)0)) {
  match->sk = cmd->sk;
  sock_hold(match->sk);
 }

 mgmt_pending_free(cmd);
}
