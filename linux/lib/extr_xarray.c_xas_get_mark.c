
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xa_mark_t ;
struct xa_state {int xa_offset; int xa_node; int xa; } ;


 int node_get_mark (int ,int ,int ) ;
 int xa_marked (int ,int ) ;
 scalar_t__ xas_invalid (struct xa_state const*) ;

bool xas_get_mark(const struct xa_state *xas, xa_mark_t mark)
{
 if (xas_invalid(xas))
  return 0;
 if (!xas->xa_node)
  return xa_marked(xas->xa, mark);
 return node_get_mark(xas->xa_node, xas->xa_offset, mark);
}
