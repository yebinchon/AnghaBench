
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUG_ON (int) ;
 int CONFIG_KALLSYMS_ALL ;
 int CONFIG_KALLSYMS_BASE_RELATIVE ;
 scalar_t__ IS_ENABLED (int ) ;
 scalar_t__ _einittext ;
 scalar_t__ _end ;
 scalar_t__ _etext ;
 scalar_t__ is_kernel_inittext (unsigned long) ;
 int kallsyms_addresses ;
 unsigned long kallsyms_num_syms ;
 int kallsyms_offsets ;
 unsigned long kallsyms_sym_address (unsigned long) ;

__attribute__((used)) static unsigned long get_symbol_pos(unsigned long addr,
        unsigned long *symbolsize,
        unsigned long *offset)
{
 unsigned long symbol_start = 0, symbol_end = 0;
 unsigned long i, low, high, mid;


 if (!IS_ENABLED(CONFIG_KALLSYMS_BASE_RELATIVE))
  BUG_ON(!kallsyms_addresses);
 else
  BUG_ON(!kallsyms_offsets);


 low = 0;
 high = kallsyms_num_syms;

 while (high - low > 1) {
  mid = low + (high - low) / 2;
  if (kallsyms_sym_address(mid) <= addr)
   low = mid;
  else
   high = mid;
 }





 while (low && kallsyms_sym_address(low-1) == kallsyms_sym_address(low))
  --low;

 symbol_start = kallsyms_sym_address(low);


 for (i = low + 1; i < kallsyms_num_syms; i++) {
  if (kallsyms_sym_address(i) > symbol_start) {
   symbol_end = kallsyms_sym_address(i);
   break;
  }
 }


 if (!symbol_end) {
  if (is_kernel_inittext(addr))
   symbol_end = (unsigned long)_einittext;
  else if (IS_ENABLED(CONFIG_KALLSYMS_ALL))
   symbol_end = (unsigned long)_end;
  else
   symbol_end = (unsigned long)_etext;
 }

 if (symbolsize)
  *symbolsize = symbol_end - symbol_start;
 if (offset)
  *offset = addr - symbol_start;

 return low;
}
