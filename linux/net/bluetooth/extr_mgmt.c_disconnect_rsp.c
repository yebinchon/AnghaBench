
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct mgmt_pending_cmd {struct sock* sk; int (* cmd_complete ) (struct mgmt_pending_cmd*,int ) ;} ;


 int mgmt_pending_remove (struct mgmt_pending_cmd*) ;
 int sock_hold (struct sock*) ;
 int stub1 (struct mgmt_pending_cmd*,int ) ;

__attribute__((used)) static void disconnect_rsp(struct mgmt_pending_cmd *cmd, void *data)
{
 struct sock **sk = data;

 cmd->cmd_complete(cmd, 0);

 *sk = cmd->sk;
 sock_hold(*sk);

 mgmt_pending_remove(cmd);
}
