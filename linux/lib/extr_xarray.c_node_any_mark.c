
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xa_mark_t ;
struct xa_node {int dummy; } ;


 int XA_CHUNK_SIZE ;
 int bitmap_empty (int ,int ) ;
 int node_marks (struct xa_node*,int ) ;

__attribute__((used)) static inline bool node_any_mark(struct xa_node *node, xa_mark_t mark)
{
 return !bitmap_empty(node_marks(node, mark), XA_CHUNK_SIZE);
}
