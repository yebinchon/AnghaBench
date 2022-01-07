
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct syscall_arg {int val; } ;


 size_t madvise__scnprintf_behavior (int ,char*,size_t) ;

__attribute__((used)) static size_t syscall_arg__scnprintf_madvise_behavior(char *bf, size_t size,
            struct syscall_arg *arg)
{
 return madvise__scnprintf_behavior(arg->val, bf, size);
}
