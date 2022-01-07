
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOMEM ;
 int init_net ;
 int rds_ib_sysctl_hdr ;
 int rds_ib_sysctl_table ;
 int register_net_sysctl (int *,char*,int ) ;

int rds_ib_sysctl_init(void)
{
 rds_ib_sysctl_hdr = register_net_sysctl(&init_net, "net/rds/ib", rds_ib_sysctl_table);
 if (!rds_ib_sysctl_hdr)
  return -ENOMEM;
 return 0;
}
