
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct syscall_arg {int val; } ;


 size_t scnprintf (char*,size_t,char*,int ) ;

size_t syscall_arg__scnprintf_int(char *bf, size_t size, struct syscall_arg *arg)
{
 return scnprintf(bf, size, "%d", arg->val);
}
