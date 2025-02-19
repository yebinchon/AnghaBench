
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct extra_kernel_map_info {scalar_t__ entry_trampoline; } ;


 scalar_t__ STB_GLOBAL ;
 int add_extra_kernel_map (struct extra_kernel_map_info*,scalar_t__,scalar_t__,int ,char const*) ;
 scalar_t__ is_entry_trampoline (char const*) ;
 scalar_t__ kallsyms2elf_binding (char) ;
 scalar_t__ page_size ;
 int strcmp (char const*,char*) ;

__attribute__((used)) static int find_extra_kernel_maps(void *arg, const char *name, char type,
      u64 start)
{
 struct extra_kernel_map_info *mi = arg;

 if (!mi->entry_trampoline && kallsyms2elf_binding(type) == STB_GLOBAL &&
     !strcmp(name, "_entry_trampoline")) {
  mi->entry_trampoline = start;
  return 0;
 }

 if (is_entry_trampoline(name)) {
  u64 end = start + page_size;

  return add_extra_kernel_map(mi, start, end, 0, name);
 }

 return 0;
}
