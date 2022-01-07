
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct bpf_verifier_state {TYPE_1__* jmp_history; } ;
struct TYPE_2__ {int idx; int prev_idx; } ;



__attribute__((used)) static int get_prev_insn_idx(struct bpf_verifier_state *st, int i,
        u32 *history)
{
 u32 cnt = *history;

 if (cnt && st->jmp_history[cnt - 1].idx == i) {
  i = st->jmp_history[cnt - 1].prev_idx;
  (*history)--;
 } else {
  i--;
 }
 return i;
}
