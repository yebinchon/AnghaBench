
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xa_state {int xa_offset; } ;


 int xas_move_index (struct xa_state*,int ) ;

__attribute__((used)) static void xas_advance(struct xa_state *xas)
{
 xas->xa_offset++;
 xas_move_index(xas, xas->xa_offset);
}
