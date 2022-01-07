
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u32 ;
struct bpf_verifier_env {size_t subprog_cnt; TYPE_2__* subprog_info; struct bpf_prog* prog; } ;
struct bpf_prog {size_t len; TYPE_1__* aux; } ;
struct bpf_line_info {size_t insn_off; } ;
struct TYPE_4__ {size_t linfo_idx; } ;
struct TYPE_3__ {size_t nr_linfo; struct bpf_line_info* linfo; } ;


 int memmove (struct bpf_line_info*,struct bpf_line_info*,int) ;

__attribute__((used)) static int bpf_adj_linfo_after_remove(struct bpf_verifier_env *env, u32 off,
          u32 cnt)
{
 struct bpf_prog *prog = env->prog;
 u32 i, l_off, l_cnt, nr_linfo;
 struct bpf_line_info *linfo;

 nr_linfo = prog->aux->nr_linfo;
 if (!nr_linfo)
  return 0;

 linfo = prog->aux->linfo;


 for (i = 0; i < nr_linfo; i++)
  if (linfo[i].insn_off >= off)
   break;

 l_off = i;
 l_cnt = 0;
 for (; i < nr_linfo; i++)
  if (linfo[i].insn_off < off + cnt)
   l_cnt++;
  else
   break;





 if (prog->len != off && l_cnt &&
     (i == nr_linfo || linfo[i].insn_off != off + cnt)) {
  l_cnt--;
  linfo[--i].insn_off = off + cnt;
 }


 if (l_cnt) {
  memmove(linfo + l_off, linfo + i,
   sizeof(*linfo) * (nr_linfo - i));

  prog->aux->nr_linfo -= l_cnt;
  nr_linfo = prog->aux->nr_linfo;
 }


 for (i = l_off; i < nr_linfo; i++)
  linfo[i].insn_off -= cnt;


 for (i = 0; i <= env->subprog_cnt; i++)
  if (env->subprog_info[i].linfo_idx > l_off) {



   if (env->subprog_info[i].linfo_idx >= l_off + l_cnt)
    env->subprog_info[i].linfo_idx -= l_cnt;
   else
    env->subprog_info[i].linfo_idx = l_off;
  }

 return 0;
}
