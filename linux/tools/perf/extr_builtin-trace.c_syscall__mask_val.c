
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct syscall_arg {size_t idx; } ;
struct syscall {TYPE_1__* arg_fmt; } ;
struct TYPE_2__ {unsigned long (* mask_val ) (struct syscall_arg*,unsigned long) ;} ;


 unsigned long stub1 (struct syscall_arg*,unsigned long) ;

__attribute__((used)) static unsigned long syscall__mask_val(struct syscall *sc, struct syscall_arg *arg, unsigned long val)
{
 if (sc->arg_fmt && sc->arg_fmt[arg->idx].mask_val)
  return sc->arg_fmt[arg->idx].mask_val(arg, val);

 return val;
}
