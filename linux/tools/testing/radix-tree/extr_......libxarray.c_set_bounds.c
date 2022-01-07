
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xa_state {int xa_node; } ;


 int XAS_BOUNDS ;

__attribute__((used)) static void *set_bounds(struct xa_state *xas)
{
 xas->xa_node = XAS_BOUNDS;
 return ((void*)0);
}
