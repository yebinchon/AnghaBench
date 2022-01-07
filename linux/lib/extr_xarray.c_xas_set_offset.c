
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xa_state {int xa_node; int xa_index; int xa_offset; } ;


 int get_offset (int ,int ) ;

__attribute__((used)) static void xas_set_offset(struct xa_state *xas)
{
 xas->xa_offset = get_offset(xas->xa_index, xas->xa_node);
}
