
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union bpf_attr {int prog_flags; } ;
typedef scalar_t__ u8 ;
typedef int u32 ;
struct bpf_verifier_env {struct bpf_insn_aux_data* insn_aux_data; struct bpf_prog* prog; } ;
struct bpf_prog {int len; struct bpf_insn* insnsi; } ;
struct bpf_insn_aux_data {scalar_t__ ptr_type; int zext_dst; } ;
struct bpf_insn {scalar_t__ code; int dst_reg; int src_reg; int imm; } ;


 struct bpf_insn BPF_ALU64_IMM (int ,int ,int) ;
 struct bpf_insn BPF_ALU64_REG (int ,int ,int ) ;
 scalar_t__ BPF_CLASS (scalar_t__) ;
 int BPF_F_TEST_RND_HI32 ;
 scalar_t__ BPF_IMM ;
 scalar_t__ BPF_LD ;
 scalar_t__ BPF_LDX ;
 int BPF_LSH ;
 scalar_t__ BPF_MODE (scalar_t__) ;
 int BPF_MOV ;
 int BPF_OR ;
 int BPF_REG_AX ;
 struct bpf_insn BPF_ZEXT_REG (int ) ;
 int DST_OP ;
 int ENOMEM ;
 scalar_t__ PTR_TO_CTX ;
 int bpf_jit_needs_zext () ;
 struct bpf_prog* bpf_patch_insn_data (struct bpf_verifier_env*,int,struct bpf_insn*,int) ;
 int get_random_int () ;
 scalar_t__ insn_no_def (struct bpf_insn*) ;
 scalar_t__ is_reg64 (struct bpf_verifier_env*,struct bpf_insn*,int ,int *,int ) ;

__attribute__((used)) static int opt_subreg_zext_lo32_rnd_hi32(struct bpf_verifier_env *env,
      const union bpf_attr *attr)
{
 struct bpf_insn *patch, zext_patch[2], rnd_hi32_patch[4];
 struct bpf_insn_aux_data *aux = env->insn_aux_data;
 int i, patch_len, delta = 0, len = env->prog->len;
 struct bpf_insn *insns = env->prog->insnsi;
 struct bpf_prog *new_prog;
 bool rnd_hi32;

 rnd_hi32 = attr->prog_flags & BPF_F_TEST_RND_HI32;
 zext_patch[1] = BPF_ZEXT_REG(0);
 rnd_hi32_patch[1] = BPF_ALU64_IMM(BPF_MOV, BPF_REG_AX, 0);
 rnd_hi32_patch[2] = BPF_ALU64_IMM(BPF_LSH, BPF_REG_AX, 32);
 rnd_hi32_patch[3] = BPF_ALU64_REG(BPF_OR, 0, BPF_REG_AX);
 for (i = 0; i < len; i++) {
  int adj_idx = i + delta;
  struct bpf_insn insn;

  insn = insns[adj_idx];
  if (!aux[adj_idx].zext_dst) {
   u8 code, class;
   u32 imm_rnd;

   if (!rnd_hi32)
    continue;

   code = insn.code;
   class = BPF_CLASS(code);
   if (insn_no_def(&insn))
    continue;





   if (is_reg64(env, &insn, insn.dst_reg, ((void*)0), DST_OP)) {
    if (class == BPF_LD &&
        BPF_MODE(code) == BPF_IMM)
     i++;
    continue;
   }


   if (class == BPF_LDX &&
       aux[adj_idx].ptr_type == PTR_TO_CTX)
    continue;

   imm_rnd = get_random_int();
   rnd_hi32_patch[0] = insn;
   rnd_hi32_patch[1].imm = imm_rnd;
   rnd_hi32_patch[3].dst_reg = insn.dst_reg;
   patch = rnd_hi32_patch;
   patch_len = 4;
   goto apply_patch_buffer;
  }

  if (!bpf_jit_needs_zext())
   continue;

  zext_patch[0] = insn;
  zext_patch[1].dst_reg = insn.dst_reg;
  zext_patch[1].src_reg = insn.dst_reg;
  patch = zext_patch;
  patch_len = 2;
apply_patch_buffer:
  new_prog = bpf_patch_insn_data(env, adj_idx, patch, patch_len);
  if (!new_prog)
   return -ENOMEM;
  env->prog = new_prog;
  insns = new_prog->insnsi;
  aux = env->insn_aux_data;
  delta += patch_len - 1;
 }

 return 0;
}
