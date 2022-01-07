
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct bpf_insn_pos {struct bpf_insn* pos; struct bpf_insn* begin; } ;
struct bpf_insn {int off; int code; } ;


 scalar_t__ BPF_CALL ;
 scalar_t__ BPF_CLASS (int ) ;
 scalar_t__ BPF_JMP ;
 int BPF_LOADER_ERRNO__PROLOGUE ;
 int BPF_LOADER_ERRNO__PROLOGUE2BIG ;
 scalar_t__ BPF_OP (int ) ;



 scalar_t__ check_pos (struct bpf_insn_pos*) ;
 int pr_err (char*) ;

__attribute__((used)) static int
prologue_relocate(struct bpf_insn_pos *pos, struct bpf_insn *error_code,
    struct bpf_insn *success_code, struct bpf_insn *user_code)
{
 struct bpf_insn *insn;

 if (check_pos(pos))
  return -BPF_LOADER_ERRNO__PROLOGUE2BIG;

 for (insn = pos->begin; insn < pos->pos; insn++) {
  struct bpf_insn *target;
  u8 class = BPF_CLASS(insn->code);
  u8 opcode;

  if (class != BPF_JMP)
   continue;
  opcode = BPF_OP(insn->code);
  if (opcode == BPF_CALL)
   continue;

  switch (insn->off) {
  case 130:
   target = error_code;
   break;
  case 129:
   target = success_code;
   break;
  case 128:
   target = user_code;
   break;
  default:
   pr_err("bpf prologue: internal error: relocation failed\n");
   return -BPF_LOADER_ERRNO__PROLOGUE;
  }

  insn->off = target - (insn + 1);
 }
 return 0;
}
