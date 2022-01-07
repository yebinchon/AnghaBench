
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ args; } ;
struct syscall_arg {int val; TYPE_1__ augmented; } ;


 size_t scnprintf (char*,size_t,char*,int ) ;
 size_t syscall_arg__scnprintf_augmented_sockaddr (struct syscall_arg*,char*,size_t) ;

size_t syscall_arg__scnprintf_sockaddr(char *bf, size_t size, struct syscall_arg *arg)
{
 if (arg->augmented.args)
  return syscall_arg__scnprintf_augmented_sockaddr(arg, bf, size);

 return scnprintf(bf, size, "%#x", arg->val);
}
