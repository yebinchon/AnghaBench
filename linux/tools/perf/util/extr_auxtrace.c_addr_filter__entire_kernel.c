
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sym_args {int started; int size; int start; } ;
struct addr_filter {int size; int addr; } ;


 int find_entire_kern_cb ;
 int kallsyms__parse (char*,struct sym_args*,int ) ;
 int pr_err (char*) ;

__attribute__((used)) static int addr_filter__entire_kernel(struct addr_filter *filt)
{
 struct sym_args args = { .started = 0 };
 int err;

 err = kallsyms__parse("/proc/kallsyms", &args, find_entire_kern_cb);
 if (err < 0 || !args.started) {
  pr_err("Failed to parse /proc/kallsyms\n");
  return err;
 }

 filt->addr = args.start;
 filt->size = args.size;

 return 0;
}
