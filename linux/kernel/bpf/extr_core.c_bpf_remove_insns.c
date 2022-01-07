
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bpf_prog {int insnsi; int len; } ;
struct bpf_insn {int dummy; } ;


 int WARN_ON_ONCE (int ) ;
 int bpf_adj_branches (struct bpf_prog*,int,int,int,int) ;
 int memmove (int,int,int) ;

int bpf_remove_insns(struct bpf_prog *prog, u32 off, u32 cnt)
{



 memmove(prog->insnsi + off, prog->insnsi + off + cnt,
  sizeof(struct bpf_insn) * (prog->len - off - cnt));
 prog->len -= cnt;

 return WARN_ON_ONCE(bpf_adj_branches(prog, off, off + cnt, off, 0));
}
