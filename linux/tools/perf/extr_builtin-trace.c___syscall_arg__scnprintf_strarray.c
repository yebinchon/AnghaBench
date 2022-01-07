
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct syscall_arg {int val; int show_string_prefix; int parm; } ;


 size_t strarray__scnprintf (int ,char*,size_t,char const*,int ,int ) ;

__attribute__((used)) static size_t __syscall_arg__scnprintf_strarray(char *bf, size_t size,
      const char *intfmt,
             struct syscall_arg *arg)
{
 return strarray__scnprintf(arg->parm, bf, size, intfmt, arg->show_string_prefix, arg->val);
}
