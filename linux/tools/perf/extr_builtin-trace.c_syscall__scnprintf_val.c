
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct syscall_arg {size_t idx; unsigned long val; scalar_t__ parm; } ;
struct syscall {TYPE_1__* arg_fmt; } ;
struct TYPE_2__ {size_t (* scnprintf ) (char*,size_t,struct syscall_arg*) ;scalar_t__ parm; } ;


 size_t scnprintf (char*,size_t,char*,unsigned long) ;
 size_t stub1 (char*,size_t,struct syscall_arg*) ;

__attribute__((used)) static size_t syscall__scnprintf_val(struct syscall *sc, char *bf, size_t size,
         struct syscall_arg *arg, unsigned long val)
{
 if (sc->arg_fmt && sc->arg_fmt[arg->idx].scnprintf) {
  arg->val = val;
  if (sc->arg_fmt[arg->idx].parm)
   arg->parm = sc->arg_fmt[arg->idx].parm;
  return sc->arg_fmt[arg->idx].scnprintf(bf, size, arg);
 }
 return scnprintf(bf, size, "%ld", val);
}
