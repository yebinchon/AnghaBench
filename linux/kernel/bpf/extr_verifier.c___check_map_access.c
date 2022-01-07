
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct bpf_verifier_env {int dummy; } ;
struct bpf_reg_state {struct bpf_map* map_ptr; } ;
struct bpf_map {int value_size; } ;


 int EACCES ;
 struct bpf_reg_state* cur_regs (struct bpf_verifier_env*) ;
 int verbose (struct bpf_verifier_env*,char*,int,int,int) ;

__attribute__((used)) static int __check_map_access(struct bpf_verifier_env *env, u32 regno, int off,
         int size, bool zero_size_allowed)
{
 struct bpf_reg_state *regs = cur_regs(env);
 struct bpf_map *map = regs[regno].map_ptr;

 if (off < 0 || size < 0 || (size == 0 && !zero_size_allowed) ||
     off + size > map->value_size) {
  verbose(env, "invalid access to map value, value_size=%d off=%d size=%d\n",
   map->value_size, off, size);
  return -EACCES;
 }
 return 0;
}
