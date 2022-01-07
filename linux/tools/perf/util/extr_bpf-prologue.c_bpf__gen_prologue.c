
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct probe_trace_arg_ref {struct probe_trace_arg_ref* next; int offset; } ;
struct probe_trace_arg {char* value; struct probe_trace_arg_ref* ref; } ;
struct bpf_insn_pos {struct bpf_insn* pos; struct bpf_insn* end; struct bpf_insn* begin; } ;
struct bpf_insn {int dummy; } ;


 int BPF_ALU64_IMM (int ,scalar_t__,int) ;
 int BPF_JA ;
 int BPF_JMP_IMM (int ,int ,int ,int ) ;
 int BPF_LOADER_ERRNO__PROLOGUEOOB ;
 size_t BPF_MAXINSNS ;
 int BPF_MOV ;
 int BPF_MOV64_REG (int ,int ) ;
 scalar_t__ BPF_PROLOGUE_FETCH_RESULT_REG ;
 int BPF_PROLOGUE_MAX_ARGS ;
 scalar_t__ BPF_PROLOGUE_START_ARG_REG ;
 int BPF_REG_0 ;
 int BPF_REG_ARG1 ;
 int BPF_REG_CTX ;
 int EINVAL ;
 int ENOTSUP ;
 int JMP_TO_USER_CODE ;
 int OFFSET_MAX ;
 int OFFSET_MIN ;
 int check_pos (struct bpf_insn_pos*) ;
 int gen_prologue_fastpath (struct bpf_insn_pos*,struct probe_trace_arg*,int) ;
 int gen_prologue_slowpath (struct bpf_insn_pos*,struct probe_trace_arg*,int) ;
 int ins (int ,struct bpf_insn_pos*) ;
 size_t pos_get_cnt (struct bpf_insn_pos*) ;
 int pr_debug (char*) ;
 int pr_err (char*,char*,...) ;
 int pr_warning (char*,int) ;
 int prologue_relocate (struct bpf_insn_pos*,struct bpf_insn*,struct bpf_insn*,struct bpf_insn*) ;

int bpf__gen_prologue(struct probe_trace_arg *args, int nargs,
        struct bpf_insn *new_prog, size_t *new_cnt,
        size_t cnt_space)
{
 struct bpf_insn *success_code = ((void*)0);
 struct bpf_insn *error_code = ((void*)0);
 struct bpf_insn *user_code = ((void*)0);
 struct bpf_insn_pos pos;
 bool fastpath = 1;
 int err = 0, i;

 if (!new_prog || !new_cnt)
  return -EINVAL;

 if (cnt_space > BPF_MAXINSNS)
  cnt_space = BPF_MAXINSNS;

 pos.begin = new_prog;
 pos.end = new_prog + cnt_space;
 pos.pos = new_prog;

 if (!nargs) {
  ins(BPF_ALU64_IMM(BPF_MOV, BPF_PROLOGUE_FETCH_RESULT_REG, 0),
      &pos);

  if (check_pos(&pos))
   goto errout;

  *new_cnt = pos_get_cnt(&pos);
  return 0;
 }

 if (nargs > BPF_PROLOGUE_MAX_ARGS) {
  pr_warning("bpf: prologue: %d arguments are dropped\n",
      nargs - BPF_PROLOGUE_MAX_ARGS);
  nargs = BPF_PROLOGUE_MAX_ARGS;
 }


 for (i = 0; i < nargs; i++) {
  struct probe_trace_arg_ref *ref = args[i].ref;

  if (args[i].value[0] == '@') {

   pr_err("bpf: prologue: global %s%+ld not support\n",
    args[i].value, ref ? ref->offset : 0);
   return -ENOTSUP;
  }

  while (ref) {

   fastpath = 0;
   if (ref->offset > ((1LL << 31) - 1) ||
     ref->offset < ((1LL << 31) * -1)) {
    pr_err("bpf: prologue: offset out of bound: %ld\n",
           ref->offset);
    return -BPF_LOADER_ERRNO__PROLOGUEOOB;
   }

   ref = ref->next;
  }
 }
 pr_debug("prologue: pass validation\n");

 if (fastpath) {

  pr_debug("prologue: fast path\n");
  err = gen_prologue_fastpath(&pos, args, nargs);
  if (err)
   goto errout;
 } else {
  pr_debug("prologue: slow path\n");


  ins(BPF_MOV64_REG(BPF_REG_CTX, BPF_REG_ARG1), &pos);

  err = gen_prologue_slowpath(&pos, args, nargs);
  if (err)
   goto errout;
  error_code = pos.pos;
  ins(BPF_ALU64_IMM(BPF_MOV, BPF_PROLOGUE_FETCH_RESULT_REG, 1),
      &pos);

  for (i = 0; i < nargs; i++)
   ins(BPF_ALU64_IMM(BPF_MOV,
       BPF_PROLOGUE_START_ARG_REG + i,
       0),
       &pos);
  ins(BPF_JMP_IMM(BPF_JA, BPF_REG_0, 0, JMP_TO_USER_CODE),
    &pos);
 }






 success_code = pos.pos;
 ins(BPF_ALU64_IMM(BPF_MOV, BPF_PROLOGUE_FETCH_RESULT_REG, 0), &pos);





 user_code = pos.pos;
 if (!fastpath) {




  ins(BPF_MOV64_REG(BPF_REG_ARG1, BPF_REG_CTX), &pos);
  err = prologue_relocate(&pos, error_code, success_code,
     user_code);
  if (err)
   goto errout;
 }

 err = check_pos(&pos);
 if (err)
  goto errout;

 *new_cnt = pos_get_cnt(&pos);
 return 0;
errout:
 return err;
}
