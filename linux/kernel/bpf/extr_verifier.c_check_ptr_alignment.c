
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_verifier_env {scalar_t__ strict_alignment; } ;
struct bpf_reg_state {int type; } ;
 int check_generic_ptr_alignment (struct bpf_verifier_env*,struct bpf_reg_state const*,char const*,int,int,int) ;
 int check_pkt_ptr_alignment (struct bpf_verifier_env*,struct bpf_reg_state const*,int,int,int) ;

__attribute__((used)) static int check_ptr_alignment(struct bpf_verifier_env *env,
          const struct bpf_reg_state *reg, int off,
          int size, bool strict_alignment_once)
{
 bool strict = env->strict_alignment || strict_alignment_once;
 const char *pointer_desc = "";

 switch (reg->type) {
 case 134:
 case 133:



  return check_pkt_ptr_alignment(env, reg, off, size, strict);
 case 136:
  pointer_desc = "flow keys ";
  break;
 case 135:
  pointer_desc = "value ";
  break;
 case 137:
  pointer_desc = "context ";
  break;
 case 130:
  pointer_desc = "stack ";




  strict = 1;
  break;
 case 132:
  pointer_desc = "sock ";
  break;
 case 131:
  pointer_desc = "sock_common ";
  break;
 case 129:
  pointer_desc = "tcp_sock ";
  break;
 case 128:
  pointer_desc = "xdp_sock ";
  break;
 default:
  break;
 }
 return check_generic_ptr_alignment(env, reg, pointer_desc, off, size,
        strict);
}
