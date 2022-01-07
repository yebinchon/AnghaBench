
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct bpf_verifier_env {int dummy; } ;
struct bpf_reg_state {struct bpf_map* map_ptr; } ;
struct bpf_map {int value_size; } ;
typedef enum bpf_access_type { ____Placeholder_bpf_access_type } bpf_access_type ;


 size_t BPF_MAP_CAN_READ ;
 size_t BPF_MAP_CAN_WRITE ;
 int BPF_READ ;
 int BPF_WRITE ;
 int EACCES ;
 size_t bpf_map_flags_to_cap (struct bpf_map*) ;
 struct bpf_reg_state* cur_regs (struct bpf_verifier_env*) ;
 int verbose (struct bpf_verifier_env*,char*,int ,int,int) ;

__attribute__((used)) static int check_map_access_type(struct bpf_verifier_env *env, u32 regno,
     int off, int size, enum bpf_access_type type)
{
 struct bpf_reg_state *regs = cur_regs(env);
 struct bpf_map *map = regs[regno].map_ptr;
 u32 cap = bpf_map_flags_to_cap(map);

 if (type == BPF_WRITE && !(cap & BPF_MAP_CAN_WRITE)) {
  verbose(env, "write into map forbidden, value_size=%d off=%d size=%d\n",
   map->value_size, off, size);
  return -EACCES;
 }

 if (type == BPF_READ && !(cap & BPF_MAP_CAN_READ)) {
  verbose(env, "read from map forbidden, value_size=%d off=%d size=%d\n",
   map->value_size, off, size);
  return -EACCES;
 }

 return 0;
}
