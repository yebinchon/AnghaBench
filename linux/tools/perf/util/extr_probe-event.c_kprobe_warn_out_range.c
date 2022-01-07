
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u64 ;


 int kernel_get_symbol_address_by_name (char*,unsigned long*,int,int) ;
 scalar_t__ kprobe_blacklist__listed (unsigned long) ;
 int pr_warning (char*,char const*) ;

__attribute__((used)) static bool kprobe_warn_out_range(const char *symbol, unsigned long address)
{
 u64 etext_addr = 0;
 int ret;


 ret = kernel_get_symbol_address_by_name("_etext", &etext_addr,
      0, 0);

 if (ret == 0 && etext_addr < address)
  pr_warning("%s is out of .text, skip it.\n", symbol);
 else if (kprobe_blacklist__listed(address))
  pr_warning("%s is blacklisted function, skip it.\n", symbol);
 else
  return 0;

 return 1;
}
