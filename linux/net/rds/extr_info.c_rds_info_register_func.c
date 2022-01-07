
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rds_info_func ;


 int BUG_ON (int) ;
 int RDS_INFO_FIRST ;
 int RDS_INFO_LAST ;
 int* rds_info_funcs ;
 int rds_info_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void rds_info_register_func(int optname, rds_info_func func)
{
 int offset = optname - RDS_INFO_FIRST;

 BUG_ON(optname < RDS_INFO_FIRST || optname > RDS_INFO_LAST);

 spin_lock(&rds_info_lock);
 BUG_ON(rds_info_funcs[offset]);
 rds_info_funcs[offset] = func;
 spin_unlock(&rds_info_lock);
}
