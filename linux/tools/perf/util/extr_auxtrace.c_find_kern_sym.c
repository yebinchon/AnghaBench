
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct sym_args {char const* name; int idx; int global; int selected; int size; int start; int started; scalar_t__ cnt; scalar_t__ duplicate; } ;


 int EINVAL ;
 int find_kern_sym_cb ;
 int kallsyms__parse (char*,struct sym_args*,int ) ;
 int pr_err (char*,...) ;
 int print_kern_sym_cb ;
 int sym_not_found_error (char const*,int) ;

__attribute__((used)) static int find_kern_sym(const char *sym_name, u64 *start, u64 *size, int idx)
{
 struct sym_args args = {
  .name = sym_name,
  .idx = idx,
  .global = !idx,
  .selected = idx > 0,
 };
 int err;

 *start = 0;
 *size = 0;

 err = kallsyms__parse("/proc/kallsyms", &args, find_kern_sym_cb);
 if (err < 0) {
  pr_err("Failed to parse /proc/kallsyms\n");
  return err;
 }

 if (args.duplicate) {
  pr_err("Multiple kernel symbols with name '%s'\n", sym_name);
  args.cnt = 0;
  kallsyms__parse("/proc/kallsyms", &args, print_kern_sym_cb);
  pr_err("Disambiguate symbol name by inserting #n after the name e.g. %s #2\n",
         sym_name);
  pr_err("Or select a global symbol by inserting #0 or #g or #G\n");
  return -EINVAL;
 }

 if (!args.started) {
  pr_err("Kernel symbol lookup: ");
  return sym_not_found_error(sym_name, idx);
 }

 *start = args.start;
 *size = args.size;

 return 0;
}
