
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct syscall_arg {size_t idx; } ;
struct syscall {TYPE_1__* arg_fmt; } ;
struct TYPE_2__ {size_t name; } ;


 size_t scnprintf (char*,size_t,char*,size_t) ;

__attribute__((used)) static size_t syscall__scnprintf_name(struct syscall *sc, char *bf, size_t size,
          struct syscall_arg *arg)
{
 if (sc->arg_fmt && sc->arg_fmt[arg->idx].name)
  return scnprintf(bf, size, "%s: ", sc->arg_fmt[arg->idx].name);

 return scnprintf(bf, size, "arg%d: ", arg->idx);
}
