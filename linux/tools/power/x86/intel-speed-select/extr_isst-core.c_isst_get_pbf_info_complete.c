
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isst_pbf_info {int core_cpumask; } ;


 int free_cpu_set (int ) ;

void isst_get_pbf_info_complete(struct isst_pbf_info *pbf_info)
{
 free_cpu_set(pbf_info->core_cpumask);
}
