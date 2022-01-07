
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct bpf_stack_build_id {int dummy; } ;
struct bpf_map {int dummy; } ;


 scalar_t__ stack_map_use_build_id (struct bpf_map*) ;

__attribute__((used)) static inline int stack_map_data_size(struct bpf_map *map)
{
 return stack_map_use_build_id(map) ?
  sizeof(struct bpf_stack_build_id) : sizeof(u64);
}
