
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int rds_sysctl_reg_table ;
 int unregister_net_sysctl_table (int ) ;

void rds_sysctl_exit(void)
{
 unregister_net_sysctl_table(rds_sysctl_reg_table);
}
