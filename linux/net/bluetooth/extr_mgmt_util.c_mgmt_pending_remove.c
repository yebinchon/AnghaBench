
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mgmt_pending_cmd {int list; } ;


 int list_del (int *) ;
 int mgmt_pending_free (struct mgmt_pending_cmd*) ;

void mgmt_pending_remove(struct mgmt_pending_cmd *cmd)
{
 list_del(&cmd->list);
 mgmt_pending_free(cmd);
}
