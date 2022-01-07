
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct func_node {int bbs; struct bpf_insn* end; struct bpf_insn* start; } ;
struct bpf_insn {int off; int code; } ;
struct bb_node {int dummy; } ;


 scalar_t__ BPF_CALL ;
 scalar_t__ BPF_EXIT ;
 scalar_t__ BPF_JA ;
 scalar_t__ BPF_OP (int ) ;
 int INIT_LIST_HEAD (int *) ;
 struct bb_node* func_append_bb (struct func_node*,struct bpf_insn*) ;
 scalar_t__ is_jmp_insn (int ) ;

__attribute__((used)) static bool func_partition_bb_head(struct func_node *func)
{
 struct bpf_insn *cur, *end;
 struct bb_node *bb;

 cur = func->start;
 end = func->end;
 INIT_LIST_HEAD(&func->bbs);
 bb = func_append_bb(func, cur);
 if (!bb)
  return 1;

 for (; cur <= end; cur++) {
  if (is_jmp_insn(cur->code)) {
   u8 opcode = BPF_OP(cur->code);

   if (opcode == BPF_EXIT || opcode == BPF_CALL)
    continue;

   bb = func_append_bb(func, cur + cur->off + 1);
   if (!bb)
    return 1;

   if (opcode != BPF_JA) {
    bb = func_append_bb(func, cur + 1);
    if (!bb)
     return 1;
   }
  }
 }

 return 0;
}
