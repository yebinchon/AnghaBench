
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct bpf_prog {TYPE_1__* aux; } ;
struct bpf_line_info {size_t insn_off; } ;
struct TYPE_2__ {size_t nr_linfo; struct bpf_line_info* linfo; } ;



__attribute__((used)) static void bpf_adj_linfo(struct bpf_prog *prog, u32 off, u32 delta)
{
 struct bpf_line_info *linfo;
 u32 i, nr_linfo;

 nr_linfo = prog->aux->nr_linfo;
 if (!nr_linfo || !delta)
  return;

 linfo = prog->aux->linfo;

 for (i = 0; i < nr_linfo; i++)
  if (off < linfo[i].insn_off)
   break;


 for (; i < nr_linfo; i++)
  linfo[i].insn_off += delta;
}
