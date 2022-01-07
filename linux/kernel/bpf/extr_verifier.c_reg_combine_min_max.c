
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct bpf_reg_state {int dummy; } ;




 int __reg_combine_min_max (struct bpf_reg_state*,struct bpf_reg_state*) ;

__attribute__((used)) static void reg_combine_min_max(struct bpf_reg_state *true_src,
    struct bpf_reg_state *true_dst,
    struct bpf_reg_state *false_src,
    struct bpf_reg_state *false_dst,
    u8 opcode)
{
 switch (opcode) {
 case 129:
  __reg_combine_min_max(true_src, true_dst);
  break;
 case 128:
  __reg_combine_min_max(false_src, false_dst);
  break;
 }
}
