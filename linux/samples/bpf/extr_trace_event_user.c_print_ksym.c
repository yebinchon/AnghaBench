
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ksym {char* name; } ;
typedef int __u64 ;


 struct ksym* ksym_search (int ) ;
 int printf (char*,...) ;
 int strcmp (char*,char*) ;
 int sys_read_seen ;
 int sys_write_seen ;

__attribute__((used)) static void print_ksym(__u64 addr)
{
 struct ksym *sym;

 if (!addr)
  return;
 sym = ksym_search(addr);
 if (!sym) {
  printf("ksym not found. Is kallsyms loaded?\n");
  return;
 }

 printf("%s;", sym->name);
 if (!strcmp(sym->name, "sys_read"))
  sys_read_seen = 1;
 else if (!strcmp(sym->name, "sys_write"))
  sys_write_seen = 1;
}
