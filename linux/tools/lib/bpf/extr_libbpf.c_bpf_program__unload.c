
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int nr; int * fds; } ;
struct bpf_program {int * line_info; int * func_info; TYPE_1__ instances; } ;


 int pr_warning (char*,int) ;
 int zclose (int ) ;
 int zfree (int **) ;

void bpf_program__unload(struct bpf_program *prog)
{
 int i;

 if (!prog)
  return;





 if (prog->instances.nr > 0) {
  for (i = 0; i < prog->instances.nr; i++)
   zclose(prog->instances.fds[i]);
 } else if (prog->instances.nr != -1) {
  pr_warning("Internal error: instances.nr is %d\n",
      prog->instances.nr);
 }

 prog->instances.nr = -1;
 zfree(&prog->instances.fds);

 zfree(&prog->func_info);
 zfree(&prog->line_info);
}
