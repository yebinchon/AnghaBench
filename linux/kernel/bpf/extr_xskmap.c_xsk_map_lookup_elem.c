
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bpf_map {int dummy; } ;


 int WARN_ON_ONCE (int) ;
 void* __xsk_map_lookup_elem (struct bpf_map*,int ) ;
 int rcu_read_lock_held () ;

__attribute__((used)) static void *xsk_map_lookup_elem(struct bpf_map *map, void *key)
{
 WARN_ON_ONCE(!rcu_read_lock_held());
 return __xsk_map_lookup_elem(map, *(u32 *)key);
}
