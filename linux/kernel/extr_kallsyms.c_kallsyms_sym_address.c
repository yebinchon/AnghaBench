
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u32 ;


 int CONFIG_KALLSYMS_ABSOLUTE_PERCPU ;
 int CONFIG_KALLSYMS_BASE_RELATIVE ;
 int IS_ENABLED (int ) ;
 unsigned long* kallsyms_addresses ;
 scalar_t__* kallsyms_offsets ;
 int kallsyms_relative_base ;

__attribute__((used)) static unsigned long kallsyms_sym_address(int idx)
{
 if (!IS_ENABLED(CONFIG_KALLSYMS_BASE_RELATIVE))
  return kallsyms_addresses[idx];


 if (!IS_ENABLED(CONFIG_KALLSYMS_ABSOLUTE_PERCPU))
  return kallsyms_relative_base + (u32)kallsyms_offsets[idx];


 if (kallsyms_offsets[idx] >= 0)
  return kallsyms_offsets[idx];


 return kallsyms_relative_base - 1 - kallsyms_offsets[idx];
}
