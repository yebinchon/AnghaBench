
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bp_cpuinfo {int dummy; } ;
typedef enum bp_type_idx { ____Placeholder_bp_type_idx } bp_type_idx ;


 int bp_cpuinfo ;
 struct bp_cpuinfo* per_cpu_ptr (int,int) ;

__attribute__((used)) static struct bp_cpuinfo *get_bp_info(int cpu, enum bp_type_idx type)
{
 return per_cpu_ptr(bp_cpuinfo + type, cpu);
}
