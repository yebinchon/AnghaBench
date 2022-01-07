
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;


 scalar_t__ PERF_CONTEXT_KERNEL ;
 scalar_t__ PERF_CONTEXT_USER ;

__attribute__((used)) static inline u64 callchain_context(u64 ip, u64 kernel_start)
{
 return ip < kernel_start ? PERF_CONTEXT_USER : PERF_CONTEXT_KERNEL;
}
