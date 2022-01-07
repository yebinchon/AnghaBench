
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sp_node {unsigned long start; unsigned long end; struct mempolicy* policy; } ;
struct mempolicy {int dummy; } ;



__attribute__((used)) static void sp_node_init(struct sp_node *node, unsigned long start,
   unsigned long end, struct mempolicy *pol)
{
 node->start = start;
 node->end = end;
 node->policy = pol;
}
