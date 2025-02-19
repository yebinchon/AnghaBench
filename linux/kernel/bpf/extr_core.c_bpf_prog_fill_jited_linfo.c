
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct bpf_prog {size_t len; void* bpf_func; TYPE_1__* aux; } ;
struct bpf_line_info {size_t insn_off; } ;
struct TYPE_2__ {void** jited_linfo; size_t linfo_idx; size_t nr_linfo; struct bpf_line_info* linfo; } ;



void bpf_prog_fill_jited_linfo(struct bpf_prog *prog,
          const u32 *insn_to_jit_off)
{
 u32 linfo_idx, insn_start, insn_end, nr_linfo, i;
 const struct bpf_line_info *linfo;
 void **jited_linfo;

 if (!prog->aux->jited_linfo)

  return;

 linfo_idx = prog->aux->linfo_idx;
 linfo = &prog->aux->linfo[linfo_idx];
 insn_start = linfo[0].insn_off;
 insn_end = insn_start + prog->len;

 jited_linfo = &prog->aux->jited_linfo[linfo_idx];
 jited_linfo[0] = prog->bpf_func;

 nr_linfo = prog->aux->nr_linfo - linfo_idx;

 for (i = 1; i < nr_linfo && linfo[i].insn_off < insn_end; i++)



  jited_linfo[i] = prog->bpf_func +
   insn_to_jit_off[linfo[i].insn_off - insn_start - 1];
}
