
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mgmt_pending_cmd {struct mgmt_pending_cmd* param; int sk; } ;


 int kfree (struct mgmt_pending_cmd*) ;
 int sock_put (int ) ;

void mgmt_pending_free(struct mgmt_pending_cmd *cmd)
{
 sock_put(cmd->sk);
 kfree(cmd->param);
 kfree(cmd);
}
