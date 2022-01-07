
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xa_mark_t ;
struct xa_node {int dummy; } ;


 int node_marks (struct xa_node*,int ) ;
 int test_bit (unsigned int,int ) ;

__attribute__((used)) static inline bool node_get_mark(struct xa_node *node,
  unsigned int offset, xa_mark_t mark)
{
 return test_bit(offset, node_marks(node, mark));
}
