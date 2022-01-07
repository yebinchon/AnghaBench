
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xa_state {unsigned int xa_index; TYPE_1__* xa_node; } ;
struct TYPE_2__ {unsigned int shift; } ;


 unsigned int XA_CHUNK_MASK ;

__attribute__((used)) static void xas_move_index(struct xa_state *xas, unsigned long offset)
{
 unsigned int shift = xas->xa_node->shift;
 xas->xa_index &= ~XA_CHUNK_MASK << shift;
 xas->xa_index += offset << shift;
}
