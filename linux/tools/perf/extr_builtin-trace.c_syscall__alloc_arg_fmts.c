
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct syscall {int nr_args; TYPE_1__* fmt; int * arg_fmt; } ;
struct TYPE_2__ {int nr_args; int * arg; } ;


 int * calloc (int,int) ;

__attribute__((used)) static int syscall__alloc_arg_fmts(struct syscall *sc, int nr_args)
{
 int idx;

 if (nr_args == 6 && sc->fmt && sc->fmt->nr_args != 0)
  nr_args = sc->fmt->nr_args;

 sc->arg_fmt = calloc(nr_args, sizeof(*sc->arg_fmt));
 if (sc->arg_fmt == ((void*)0))
  return -1;

 for (idx = 0; idx < nr_args; ++idx) {
  if (sc->fmt)
   sc->arg_fmt[idx] = sc->fmt->arg[idx];
 }

 sc->nr_args = nr_args;
 return 0;
}
