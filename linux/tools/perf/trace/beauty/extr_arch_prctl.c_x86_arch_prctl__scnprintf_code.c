
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t strarrays__scnprintf (int *,char*,size_t,char*,int,int) ;
 int strarrays__x86_arch_prctl_codes ;

__attribute__((used)) static size_t x86_arch_prctl__scnprintf_code(int option, char *bf, size_t size, bool show_prefix)
{
 return strarrays__scnprintf(&strarrays__x86_arch_prctl_codes, bf, size, "%#x", show_prefix, option);
}
