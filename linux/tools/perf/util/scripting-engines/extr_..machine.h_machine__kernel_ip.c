
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct machine {int dummy; } ;


 scalar_t__ machine__kernel_start (struct machine*) ;

__attribute__((used)) static inline bool machine__kernel_ip(struct machine *machine, u64 ip)
{
 u64 kernel_start = machine__kernel_start(machine);

 return ip >= kernel_start;
}
