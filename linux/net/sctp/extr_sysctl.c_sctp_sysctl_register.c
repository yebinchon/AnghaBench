
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int init_net ;
 int register_net_sysctl (int *,char*,int ) ;
 int sctp_sysctl_header ;
 int sctp_table ;

void sctp_sysctl_register(void)
{
 sctp_sysctl_header = register_net_sysctl(&init_net, "net/sctp", sctp_table);
}
