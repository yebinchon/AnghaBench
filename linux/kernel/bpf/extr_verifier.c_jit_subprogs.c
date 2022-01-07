
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct bpf_verifier_env {int subprog_cnt; TYPE_2__* insn_aux_data; TYPE_3__* subprog_info; struct bpf_prog* prog; } ;
struct bpf_prog {int len; int is_func; int jit_requested; int jited; void* bpf_func; struct bpf_insn* insnsi; TYPE_1__* aux; int type; } ;
struct bpf_insn {int code; scalar_t__ src_reg; int imm; int off; } ;
typedef int prog ;
struct TYPE_6__ {int start; int linfo_idx; int stack_depth; } ;
struct TYPE_5__ {int call_imm; } ;
struct TYPE_4__ {int func_idx; float* name; int func_cnt; struct bpf_prog** func; int linfo_idx; int jited_linfo; int nr_linfo; int linfo; int stack_depth; int func_info; int btf; } ;


 int BPF_CALL ;
 int BPF_CAST_CALL (void*) ;
 int BPF_JMP ;
 scalar_t__ BPF_PSEUDO_CALL ;
 int EFAULT ;
 int ENOMEM ;
 int ENOTSUPP ;
 int GFP_KERNEL ;
 int GFP_USER ;
 int WARN_ONCE (int,char*,int) ;
 int __bpf_call_base ;
 struct bpf_prog* bpf_int_jit_compile (struct bpf_prog*) ;
 int bpf_jit_free (struct bpf_prog*) ;
 int bpf_prog_alloc_jited_linfo (struct bpf_prog*) ;
 struct bpf_prog* bpf_prog_alloc_no_stats (int ,int ) ;
 scalar_t__ bpf_prog_calc_tag (struct bpf_prog*) ;
 int bpf_prog_free_jited_linfo (struct bpf_prog*) ;
 int bpf_prog_free_unused_jited_linfo (struct bpf_prog*) ;
 int bpf_prog_kallsyms_add (struct bpf_prog*) ;
 int bpf_prog_lock_ro (struct bpf_prog*) ;
 int bpf_prog_size (int) ;
 int cond_resched () ;
 int find_subprog (struct bpf_verifier_env*,int) ;
 struct bpf_prog** kcalloc (int,int,int ) ;
 int kfree (struct bpf_prog**) ;
 int memcpy (struct bpf_insn*,struct bpf_insn*,int) ;
 int verbose (struct bpf_verifier_env*,char*) ;

__attribute__((used)) static int jit_subprogs(struct bpf_verifier_env *env)
{
 struct bpf_prog *prog = env->prog, **func, *tmp;
 int i, j, subprog_start, subprog_end = 0, len, subprog;
 struct bpf_insn *insn;
 void *old_bpf_func;
 int err;

 if (env->subprog_cnt <= 1)
  return 0;

 for (i = 0, insn = prog->insnsi; i < prog->len; i++, insn++) {
  if (insn->code != (BPF_JMP | BPF_CALL) ||
      insn->src_reg != BPF_PSEUDO_CALL)
   continue;




  subprog = find_subprog(env, i + insn->imm + 1);
  if (subprog < 0) {
   WARN_ONCE(1, "verifier bug. No program starts at insn %d\n",
      i + insn->imm + 1);
   return -EFAULT;
  }



  insn->off = subprog;



  env->insn_aux_data[i].call_imm = insn->imm;

  insn->imm = 1;
 }

 err = bpf_prog_alloc_jited_linfo(prog);
 if (err)
  goto out_undo_insn;

 err = -ENOMEM;
 func = kcalloc(env->subprog_cnt, sizeof(prog), GFP_KERNEL);
 if (!func)
  goto out_undo_insn;

 for (i = 0; i < env->subprog_cnt; i++) {
  subprog_start = subprog_end;
  subprog_end = env->subprog_info[i + 1].start;

  len = subprog_end - subprog_start;





  func[i] = bpf_prog_alloc_no_stats(bpf_prog_size(len), GFP_USER);
  if (!func[i])
   goto out_free;
  memcpy(func[i]->insnsi, &prog->insnsi[subprog_start],
         len * sizeof(struct bpf_insn));
  func[i]->type = prog->type;
  func[i]->len = len;
  if (bpf_prog_calc_tag(func[i]))
   goto out_free;
  func[i]->is_func = 1;
  func[i]->aux->func_idx = i;

  func[i]->aux->btf = prog->aux->btf;
  func[i]->aux->func_info = prog->aux->func_info;




  func[i]->aux->name[0] = 'F';
  func[i]->aux->stack_depth = env->subprog_info[i].stack_depth;
  func[i]->jit_requested = 1;
  func[i]->aux->linfo = prog->aux->linfo;
  func[i]->aux->nr_linfo = prog->aux->nr_linfo;
  func[i]->aux->jited_linfo = prog->aux->jited_linfo;
  func[i]->aux->linfo_idx = env->subprog_info[i].linfo_idx;
  func[i] = bpf_int_jit_compile(func[i]);
  if (!func[i]->jited) {
   err = -ENOTSUPP;
   goto out_free;
  }
  cond_resched();
 }




 for (i = 0; i < env->subprog_cnt; i++) {
  insn = func[i]->insnsi;
  for (j = 0; j < func[i]->len; j++, insn++) {
   if (insn->code != (BPF_JMP | BPF_CALL) ||
       insn->src_reg != BPF_PSEUDO_CALL)
    continue;
   subprog = insn->off;
   insn->imm = BPF_CAST_CALL(func[subprog]->bpf_func) -
        __bpf_call_base;
  }
  func[i]->aux->func = func;
  func[i]->aux->func_cnt = env->subprog_cnt;
 }
 for (i = 0; i < env->subprog_cnt; i++) {
  old_bpf_func = func[i]->bpf_func;
  tmp = bpf_int_jit_compile(func[i]);
  if (tmp != func[i] || func[i]->bpf_func != old_bpf_func) {
   verbose(env, "JIT doesn't support bpf-to-bpf calls\n");
   err = -ENOTSUPP;
   goto out_free;
  }
  cond_resched();
 }




 for (i = 0; i < env->subprog_cnt; i++) {
  bpf_prog_lock_ro(func[i]);
  bpf_prog_kallsyms_add(func[i]);
 }





 for (i = 0, insn = prog->insnsi; i < prog->len; i++, insn++) {
  if (insn->code != (BPF_JMP | BPF_CALL) ||
      insn->src_reg != BPF_PSEUDO_CALL)
   continue;
  insn->off = env->insn_aux_data[i].call_imm;
  subprog = find_subprog(env, i + insn->off + 1);
  insn->imm = subprog;
 }

 prog->jited = 1;
 prog->bpf_func = func[0]->bpf_func;
 prog->aux->func = func;
 prog->aux->func_cnt = env->subprog_cnt;
 bpf_prog_free_unused_jited_linfo(prog);
 return 0;
out_free:
 for (i = 0; i < env->subprog_cnt; i++)
  if (func[i])
   bpf_jit_free(func[i]);
 kfree(func);
out_undo_insn:

 prog->jit_requested = 0;
 for (i = 0, insn = prog->insnsi; i < prog->len; i++, insn++) {
  if (insn->code != (BPF_JMP | BPF_CALL) ||
      insn->src_reg != BPF_PSEUDO_CALL)
   continue;
  insn->off = 0;
  insn->imm = env->insn_aux_data[i].call_imm;
 }
 bpf_prog_free_jited_linfo(prog);
 return err;
}
