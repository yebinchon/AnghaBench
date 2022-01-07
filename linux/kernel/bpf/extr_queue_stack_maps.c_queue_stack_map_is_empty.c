
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_queue_stack {scalar_t__ head; scalar_t__ tail; } ;



__attribute__((used)) static bool queue_stack_map_is_empty(struct bpf_queue_stack *qs)
{
 return qs->head == qs->tail;
}
