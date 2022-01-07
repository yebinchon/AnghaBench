
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct linux_binprm {long p; } ;



__attribute__((used)) static bool valid_arg_len(struct linux_binprm *bprm, long len)
{
 return len <= bprm->p;
}
