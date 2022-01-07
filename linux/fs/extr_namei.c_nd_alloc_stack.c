
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nameidata {scalar_t__ depth; scalar_t__ stack; scalar_t__ internal; } ;


 scalar_t__ EMBEDDED_LEVELS ;
 int __nd_alloc_stack (struct nameidata*) ;
 scalar_t__ likely (int) ;

__attribute__((used)) static inline int nd_alloc_stack(struct nameidata *nd)
{
 if (likely(nd->depth != EMBEDDED_LEVELS))
  return 0;
 if (likely(nd->stack != nd->internal))
  return 0;
 return __nd_alloc_stack(nd);
}
