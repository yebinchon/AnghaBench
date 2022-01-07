
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct syscall_arg {unsigned long val; int mask; int show_string_prefix; } ;


 unsigned long KCMP_FILE ;
 size_t kcmp__scnprintf_type (unsigned long,char*,size_t,int ) ;

size_t syscall_arg__scnprintf_kcmp_type(char *bf, size_t size, struct syscall_arg *arg)
{
 unsigned long type = arg->val;

 if (type != KCMP_FILE)
  arg->mask |= (1 << 3) | (1 << 4);

 return kcmp__scnprintf_type(type, bf, size, arg->show_string_prefix);
}
