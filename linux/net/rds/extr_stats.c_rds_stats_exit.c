
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RDS_INFO_COUNTERS ;
 int rds_info_deregister_func (int ,int ) ;
 int rds_stats_info ;

void rds_stats_exit(void)
{
 rds_info_deregister_func(RDS_INFO_COUNTERS, rds_stats_info);
}
