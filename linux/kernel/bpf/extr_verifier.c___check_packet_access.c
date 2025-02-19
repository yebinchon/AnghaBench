
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef size_t u32 ;
struct bpf_verifier_env {int dummy; } ;
struct bpf_reg_state {scalar_t__ range; int off; int id; } ;


 int EACCES ;
 struct bpf_reg_state* cur_regs (struct bpf_verifier_env*) ;
 int verbose (struct bpf_verifier_env*,char*,int,int,size_t,int ,int ,scalar_t__) ;

__attribute__((used)) static int __check_packet_access(struct bpf_verifier_env *env, u32 regno,
     int off, int size, bool zero_size_allowed)
{
 struct bpf_reg_state *regs = cur_regs(env);
 struct bpf_reg_state *reg = &regs[regno];

 if (off < 0 || size < 0 || (size == 0 && !zero_size_allowed) ||
     (u64)off + size > reg->range) {
  verbose(env, "invalid access to packet, off=%d size=%d, R%d(id=%d,off=%d,r=%d)\n",
   off, size, regno, reg->id, reg->off, reg->range);
  return -EACCES;
 }
 return 0;
}
