
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xa_state {int xa_index; int * xa_node; int xa; } ;
struct TYPE_2__ {int shift; } ;


 int XA_CHUNK_MASK ;
 void* set_bounds (struct xa_state*) ;
 void* xa_head (int ) ;
 int xa_is_node (void*) ;
 TYPE_1__* xa_to_node (void*) ;
 scalar_t__ xas_error (struct xa_state*) ;
 void* xas_reload (struct xa_state*) ;
 scalar_t__ xas_valid (struct xa_state*) ;

__attribute__((used)) static void *xas_start(struct xa_state *xas)
{
 void *entry;

 if (xas_valid(xas))
  return xas_reload(xas);
 if (xas_error(xas))
  return ((void*)0);

 entry = xa_head(xas->xa);
 if (!xa_is_node(entry)) {
  if (xas->xa_index)
   return set_bounds(xas);
 } else {
  if ((xas->xa_index >> xa_to_node(entry)->shift) > XA_CHUNK_MASK)
   return set_bounds(xas);
 }

 xas->xa_node = ((void*)0);
 return entry;
}
