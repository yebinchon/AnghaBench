
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ CPU_MITIGATIONS_AUTO_NOSMT ;
 scalar_t__ cpu_mitigations ;

bool cpu_mitigations_auto_nosmt(void)
{
 return cpu_mitigations == CPU_MITIGATIONS_AUTO_NOSMT;
}
