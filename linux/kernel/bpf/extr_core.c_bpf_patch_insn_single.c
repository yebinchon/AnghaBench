
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bpf_prog {int insnsi; int len; } ;
struct bpf_insn {int dummy; } ;


 int BUG_ON (int) ;
 int ENOMEM ;
 struct bpf_prog* ERR_PTR (int) ;
 int GFP_USER ;
 int S16_MAX ;
 int bpf_adj_branches (struct bpf_prog*,int,int,int,int) ;
 int bpf_adj_linfo (struct bpf_prog*,int,int) ;
 struct bpf_prog* bpf_prog_realloc (struct bpf_prog*,int ,int ) ;
 int bpf_prog_size (int) ;
 int memcpy (int,struct bpf_insn const*,int) ;
 int memmove (int,int,int) ;

struct bpf_prog *bpf_patch_insn_single(struct bpf_prog *prog, u32 off,
           const struct bpf_insn *patch, u32 len)
{
 u32 insn_adj_cnt, insn_rest, insn_delta = len - 1;
 const u32 cnt_max = S16_MAX;
 struct bpf_prog *prog_adj;
 int err;


 if (insn_delta == 0) {
  memcpy(prog->insnsi + off, patch, sizeof(*patch));
  return prog;
 }

 insn_adj_cnt = prog->len + insn_delta;






 if (insn_adj_cnt > cnt_max &&
     (err = bpf_adj_branches(prog, off, off + 1, off + len, 1)))
  return ERR_PTR(err);





 prog_adj = bpf_prog_realloc(prog, bpf_prog_size(insn_adj_cnt),
        GFP_USER);
 if (!prog_adj)
  return ERR_PTR(-ENOMEM);

 prog_adj->len = insn_adj_cnt;
 insn_rest = insn_adj_cnt - off - len;

 memmove(prog_adj->insnsi + off + len, prog_adj->insnsi + off + 1,
  sizeof(*patch) * insn_rest);
 memcpy(prog_adj->insnsi + off, patch, sizeof(*patch) * len);





 BUG_ON(bpf_adj_branches(prog_adj, off, off + 1, off + len, 0));

 bpf_adj_linfo(prog_adj, off, insn_delta);

 return prog_adj;
}
