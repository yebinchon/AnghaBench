
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct syscall_arg {unsigned long val; int mask; int show_string_prefix; } ;


 unsigned long MAP_ANONYMOUS ;
 size_t mmap__scnprintf_flags (unsigned long,char*,size_t,int ) ;

__attribute__((used)) static size_t syscall_arg__scnprintf_mmap_flags(char *bf, size_t size,
      struct syscall_arg *arg)
{
 unsigned long flags = arg->val;

 if (flags & MAP_ANONYMOUS)
  arg->mask |= (1 << 4) | (1 << 5);

 return mmap__scnprintf_flags(flags, bf, size, arg->show_string_prefix);
}
