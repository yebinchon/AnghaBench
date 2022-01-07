
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {TYPE_2__* sysctl_header; } ;
struct net {TYPE_1__ sctp; } ;
struct ctl_table {int dummy; } ;
struct TYPE_4__ {struct ctl_table* ctl_table_arg; } ;


 int kfree (struct ctl_table*) ;
 int unregister_net_sysctl_table (TYPE_2__*) ;

void sctp_sysctl_net_unregister(struct net *net)
{
 struct ctl_table *table;

 table = net->sctp.sysctl_header->ctl_table_arg;
 unregister_net_sysctl_table(net->sctp.sysctl_header);
 kfree(table);
}
