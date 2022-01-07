
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strcmp (char const*,char const*) ;

__attribute__((used)) static inline bool arch_syscall_match_sym_name(const char *sym, const char *name)
{






 return !strcmp(sym + 3, name + 3);
}
