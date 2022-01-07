
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct optimistic_spin_node {int cpu; } ;



__attribute__((used)) static inline int node_cpu(struct optimistic_spin_node *node)
{
 return node->cpu - 1;
}
