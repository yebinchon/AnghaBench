
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_queue_stack {int dummy; } ;
struct bpf_map {int dummy; } ;


 int bpf_map_area_free (struct bpf_queue_stack*) ;
 struct bpf_queue_stack* bpf_queue_stack (struct bpf_map*) ;
 int synchronize_rcu () ;

__attribute__((used)) static void queue_stack_map_free(struct bpf_map *map)
{
 struct bpf_queue_stack *qs = bpf_queue_stack(map);






 synchronize_rcu();

 bpf_map_area_free(qs);
}
