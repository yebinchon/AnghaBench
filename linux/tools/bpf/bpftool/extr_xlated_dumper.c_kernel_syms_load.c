
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kernel_sym {unsigned long address; int name; } ;
struct dump_data {int sym_count; unsigned long address_call_base; struct kernel_sym* sym_mapping; } ;
typedef int buff ;
typedef int FILE ;


 int fclose (int *) ;
 scalar_t__ fgets (char*,int,int *) ;
 int * fopen (char*,char*) ;
 int free (struct kernel_sym*) ;
 int kernel_syms_cmp ;
 int qsort (struct kernel_sym*,size_t,int,int ) ;
 void* reallocarray (struct kernel_sym*,int,int) ;
 int sscanf (char*,char*,void**,int ) ;
 int strcmp (int ,char*) ;

void kernel_syms_load(struct dump_data *dd)
{
 struct kernel_sym *sym;
 char buff[256];
 void *tmp, *address;
 FILE *fp;

 fp = fopen("/proc/kallsyms", "r");
 if (!fp)
  return;

 while (fgets(buff, sizeof(buff), fp)) {
  tmp = reallocarray(dd->sym_mapping, dd->sym_count + 1,
       sizeof(*dd->sym_mapping));
  if (!tmp) {
out:
   free(dd->sym_mapping);
   dd->sym_mapping = ((void*)0);
   fclose(fp);
   return;
  }
  dd->sym_mapping = tmp;
  sym = &dd->sym_mapping[dd->sym_count];
  if (sscanf(buff, "%p %*c %s", &address, sym->name) != 2)
   continue;
  sym->address = (unsigned long)address;
  if (!strcmp(sym->name, "__bpf_call_base")) {
   dd->address_call_base = sym->address;

   if (!sym->address)
    goto out;
  }
  if (sym->address)
   dd->sym_count++;
 }

 fclose(fp);

 qsort(dd->sym_mapping, dd->sym_count,
       sizeof(*dd->sym_mapping), kernel_syms_cmp);
}
