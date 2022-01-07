
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int pr_err (char*,...) ;

__attribute__((used)) static int sym_not_found_error(const char *sym_name, int idx)
{
 if (idx > 0) {
  pr_err("N'th occurrence (N=%d) of symbol '%s' not found.\n",
         idx, sym_name);
 } else if (!idx) {
  pr_err("Global symbol '%s' not found.\n", sym_name);
 } else {
  pr_err("Symbol '%s' not found.\n", sym_name);
 }
 pr_err("Note that symbols must be functions.\n");

 return -EINVAL;
}
