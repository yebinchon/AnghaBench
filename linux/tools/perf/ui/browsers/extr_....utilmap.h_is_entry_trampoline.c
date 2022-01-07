
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENTRY_TRAMPOLINE_NAME ;
 int strcmp (char const*,int ) ;

__attribute__((used)) static inline bool is_entry_trampoline(const char *name)
{
 return !strcmp(name, ENTRY_TRAMPOLINE_NAME);
}
