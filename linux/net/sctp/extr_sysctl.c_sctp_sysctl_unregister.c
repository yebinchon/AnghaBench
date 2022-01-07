
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sctp_sysctl_header ;
 int unregister_net_sysctl_table (int ) ;

void sctp_sysctl_unregister(void)
{
 unregister_net_sysctl_table(sctp_sysctl_header);
}
