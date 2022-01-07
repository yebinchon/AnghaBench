
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ksym {char* name; } ;
typedef int __u64 ;


 scalar_t__ PRINT_RAW_ADDR ;
 struct ksym* ksym_search (int ) ;
 int printf (char*,...) ;

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

 if (PRINT_RAW_ADDR)
  printf("%s/%llx;", sym->name, addr);
 else
  printf("%s;", sym->name);
}
