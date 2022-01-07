
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct bpf_verifier_env {int subprog_cnt; TYPE_2__* subprog_info; TYPE_1__* prog; } ;
struct bpf_prog_aux {int func_info_cnt; TYPE_2__* func_info; } ;
struct TYPE_5__ {scalar_t__ start; } ;
struct TYPE_4__ {struct bpf_prog_aux* aux; } ;


 int memmove (TYPE_2__*,TYPE_2__*,int) ;

__attribute__((used)) static int adjust_subprog_starts_after_remove(struct bpf_verifier_env *env,
           u32 off, u32 cnt)
{
 int i, j;


 for (i = 0; i < env->subprog_cnt; i++)
  if (env->subprog_info[i].start >= off)
   break;

 for (j = i; j < env->subprog_cnt; j++)
  if (env->subprog_info[j].start >= off + cnt)
   break;



 if (env->subprog_info[j].start != off + cnt)
  j--;

 if (j > i) {
  struct bpf_prog_aux *aux = env->prog->aux;
  int move;


  move = env->subprog_cnt + 1 - j;

  memmove(env->subprog_info + i,
   env->subprog_info + j,
   sizeof(*env->subprog_info) * move);
  env->subprog_cnt -= j - i;


  if (aux->func_info) {
   move = aux->func_info_cnt - j;

   memmove(aux->func_info + i,
    aux->func_info + j,
    sizeof(*aux->func_info) * move);
   aux->func_info_cnt -= j - i;



  }
 } else {

  if (env->subprog_info[i].start == off)
   i++;
 }


 for (; i <= env->subprog_cnt; i++)
  env->subprog_info[i].start -= cnt;

 return 0;
}
