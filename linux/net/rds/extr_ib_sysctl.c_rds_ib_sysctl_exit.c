
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ rds_ib_sysctl_hdr ;
 int unregister_net_sysctl_table (scalar_t__) ;

void rds_ib_sysctl_exit(void)
{
 if (rds_ib_sysctl_hdr)
  unregister_net_sysctl_table(rds_ib_sysctl_hdr);
}
