
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct machine {int dummy; } ;


 int PATH_MAX ;
 int kallsyms__get_function_start (char*,char const*,int *) ;
 int machine__get_kallsyms_filename (struct machine*,char*,int) ;
 char** ref_reloc_sym_names ;
 scalar_t__ symbol__restricted_filename (char*,char*) ;

__attribute__((used)) static int machine__get_running_kernel_start(struct machine *machine,
          const char **symbol_name,
          u64 *start, u64 *end)
{
 char filename[PATH_MAX];
 int i, err = -1;
 const char *name;
 u64 addr = 0;

 machine__get_kallsyms_filename(machine, filename, PATH_MAX);

 if (symbol__restricted_filename(filename, "/proc/kallsyms"))
  return 0;

 for (i = 0; (name = ref_reloc_sym_names[i]) != ((void*)0); i++) {
  err = kallsyms__get_function_start(filename, name, &addr);
  if (!err)
   break;
 }

 if (err)
  return -1;

 if (symbol_name)
  *symbol_name = name;

 *start = addr;

 err = kallsyms__get_function_start(filename, "_etext", &addr);
 if (!err)
  *end = addr;

 return 0;
}
