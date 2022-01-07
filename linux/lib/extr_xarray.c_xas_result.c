
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xa_state {void* xa_node; } ;


 scalar_t__ xa_is_zero (void*) ;
 scalar_t__ xas_error (struct xa_state*) ;

__attribute__((used)) static void *xas_result(struct xa_state *xas, void *curr)
{
 if (xa_is_zero(curr))
  return ((void*)0);
 if (xas_error(xas))
  curr = xas->xa_node;
 return curr;
}
