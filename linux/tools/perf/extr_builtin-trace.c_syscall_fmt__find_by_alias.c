
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct syscall_fmt {scalar_t__ alias; } ;


 int ARRAY_SIZE (struct syscall_fmt*) ;
 scalar_t__ strcmp (scalar_t__,char const*) ;
 struct syscall_fmt* syscall_fmts ;

__attribute__((used)) static struct syscall_fmt *syscall_fmt__find_by_alias(const char *alias)
{
 int i, nmemb = ARRAY_SIZE(syscall_fmts);

 for (i = 0; i < nmemb; ++i) {
  if (syscall_fmts[i].alias && strcmp(syscall_fmts[i].alias, alias) == 0)
   return &syscall_fmts[i];
 }

 return ((void*)0);
}
