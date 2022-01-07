
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef int u8 ;
struct intel_pt {scalar_t__ kernel_start; } ;


 int PERF_RECORD_MISC_KERNEL ;
 int PERF_RECORD_MISC_USER ;

__attribute__((used)) static inline u8 intel_pt_cpumode(struct intel_pt *pt, uint64_t ip)
{
 return ip >= pt->kernel_start ?
        PERF_RECORD_MISC_KERNEL :
        PERF_RECORD_MISC_USER;
}
