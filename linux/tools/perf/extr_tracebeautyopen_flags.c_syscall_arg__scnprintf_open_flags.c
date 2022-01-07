
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct syscall_arg {int val; int mask; int idx; int show_string_prefix; } ;


 int O_CREAT ;
 size_t open__scnprintf_flags (int,char*,size_t,int ) ;

size_t syscall_arg__scnprintf_open_flags(char *bf, size_t size, struct syscall_arg *arg)
{
 int flags = arg->val;

 if (!(flags & O_CREAT))
  arg->mask |= 1 << (arg->idx + 1);

 return open__scnprintf_flags(flags, bf, size, arg->show_string_prefix);
}
