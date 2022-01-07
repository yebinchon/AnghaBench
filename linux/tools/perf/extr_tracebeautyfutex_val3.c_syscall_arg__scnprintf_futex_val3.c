
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct syscall_arg {unsigned int val; scalar_t__ show_string_prefix; } ;


 unsigned int FUTEX_BITSET_MATCH_ANY ;
 size_t scnprintf (char*,size_t,char*,...) ;

__attribute__((used)) static size_t syscall_arg__scnprintf_futex_val3(char *bf, size_t size, struct syscall_arg *arg)
{
 const char *prefix = "FUTEX_BITSET_";
 unsigned int bitset = arg->val;

 if (bitset == FUTEX_BITSET_MATCH_ANY)
  return scnprintf(bf, size, "%s%s", arg->show_string_prefix ? prefix : "", "MATCH_ANY");

 return scnprintf(bf, size, "%#xd", bitset);
}
