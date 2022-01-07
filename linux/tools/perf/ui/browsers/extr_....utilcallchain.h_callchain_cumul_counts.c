
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct callchain_node {int count; int children_count; } ;



__attribute__((used)) static inline unsigned callchain_cumul_counts(struct callchain_node *node)
{
 return node->count + node->children_count;
}
