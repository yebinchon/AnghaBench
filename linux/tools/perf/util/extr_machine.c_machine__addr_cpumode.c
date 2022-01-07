
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
struct machine {int single_address_space; } ;






 int machine__kernel_ip (struct machine*,int ) ;

u8 machine__addr_cpumode(struct machine *machine, u8 cpumode, u64 addr)
{
 u8 addr_cpumode = cpumode;
 bool kernel_ip;

 if (!machine->single_address_space)
  goto out;

 kernel_ip = machine__kernel_ip(machine, addr);
 switch (cpumode) {
 case 129:
 case 128:
  addr_cpumode = kernel_ip ? 129 :
        128;
  break;
 case 131:
 case 130:
  addr_cpumode = kernel_ip ? 131 :
        130;
  break;
 default:
  break;
 }
out:
 return addr_cpumode;
}
