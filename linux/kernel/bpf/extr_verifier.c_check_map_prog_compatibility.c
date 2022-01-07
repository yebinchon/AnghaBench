
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_verifier_env {int dummy; } ;
struct bpf_prog {scalar_t__ type; int aux; } ;
struct bpf_map {struct bpf_map* inner_map_meta; } ;


 scalar_t__ BPF_PROG_TYPE_PERF_EVENT ;
 scalar_t__ BPF_PROG_TYPE_SOCKET_FILTER ;
 int EINVAL ;
 scalar_t__ bpf_map_is_dev_bound (struct bpf_map*) ;
 int bpf_offload_prog_map_match (struct bpf_prog*,struct bpf_map*) ;
 scalar_t__ bpf_prog_is_dev_bound (int ) ;
 int check_map_prealloc (struct bpf_map*) ;
 scalar_t__ is_tracing_prog_type (scalar_t__) ;
 scalar_t__ map_value_has_spin_lock (struct bpf_map*) ;
 int verbose (struct bpf_verifier_env*,char*) ;

__attribute__((used)) static int check_map_prog_compatibility(struct bpf_verifier_env *env,
     struct bpf_map *map,
     struct bpf_prog *prog)

{





 if (prog->type == BPF_PROG_TYPE_PERF_EVENT) {
  if (!check_map_prealloc(map)) {
   verbose(env, "perf_event programs can only use preallocated hash map\n");
   return -EINVAL;
  }
  if (map->inner_map_meta &&
      !check_map_prealloc(map->inner_map_meta)) {
   verbose(env, "perf_event programs can only use preallocated inner hash map\n");
   return -EINVAL;
  }
 }

 if ((is_tracing_prog_type(prog->type) ||
      prog->type == BPF_PROG_TYPE_SOCKET_FILTER) &&
     map_value_has_spin_lock(map)) {
  verbose(env, "tracing progs cannot use bpf_spin_lock yet\n");
  return -EINVAL;
 }

 if ((bpf_prog_is_dev_bound(prog->aux) || bpf_map_is_dev_bound(map)) &&
     !bpf_offload_prog_map_match(prog, map)) {
  verbose(env, "offload device mismatch between prog and map\n");
  return -EINVAL;
 }

 return 0;
}
