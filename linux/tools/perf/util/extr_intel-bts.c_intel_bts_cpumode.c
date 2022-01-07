
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int u8 ;
struct intel_bts {int machine; } ;


 int PERF_RECORD_MISC_KERNEL ;
 int PERF_RECORD_MISC_USER ;
 scalar_t__ machine__kernel_ip (int ,int ) ;

__attribute__((used)) static inline u8 intel_bts_cpumode(struct intel_bts *bts, uint64_t ip)
{
 return machine__kernel_ip(bts->machine, ip) ?
        PERF_RECORD_MISC_KERNEL :
        PERF_RECORD_MISC_USER;
}
