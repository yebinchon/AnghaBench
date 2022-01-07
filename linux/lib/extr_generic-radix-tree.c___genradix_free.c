
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct genradix_root {int dummy; } ;
struct __genradix {int root; } ;


 int genradix_free_recurse (int ,int ) ;
 int genradix_root_to_depth (struct genradix_root*) ;
 int genradix_root_to_node (struct genradix_root*) ;
 struct genradix_root* xchg (int *,int *) ;

void __genradix_free(struct __genradix *radix)
{
 struct genradix_root *r = xchg(&radix->root, ((void*)0));

 genradix_free_recurse(genradix_root_to_node(r),
         genradix_root_to_depth(r));
}
