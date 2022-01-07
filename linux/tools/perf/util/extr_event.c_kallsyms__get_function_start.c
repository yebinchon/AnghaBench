
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct process_symbol_args {char const* name; int start; } ;


 int find_symbol_cb ;
 scalar_t__ kallsyms__parse (char const*,struct process_symbol_args*,int ) ;

int kallsyms__get_function_start(const char *kallsyms_filename,
     const char *symbol_name, u64 *addr)
{
 struct process_symbol_args args = { .name = symbol_name, };

 if (kallsyms__parse(kallsyms_filename, &args, find_symbol_cb) <= 0)
  return -1;

 *addr = args.start;
 return 0;
}
