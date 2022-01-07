
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ bpf_core_is_flavor_sep (char const*) ;
 size_t strlen (char const*) ;

__attribute__((used)) static size_t bpf_core_essential_name_len(const char *name)
{
 size_t n = strlen(name);
 int i;

 for (i = n - 5; i >= 0; i--) {
  if (bpf_core_is_flavor_sep(name + i))
   return i + 1;
 }
 return n;
}
