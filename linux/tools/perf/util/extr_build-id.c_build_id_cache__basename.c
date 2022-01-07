
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char *build_id_cache__basename(bool is_kallsyms, bool is_vdso,
         bool is_debug)
{
 return is_kallsyms ? "kallsyms" : (is_vdso ? "vdso" : (is_debug ?
     "debug" : "elf"));
}
