
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct genradix_root {int dummy; } ;
typedef void genradix_node ;


 unsigned long GENRADIX_DEPTH_MASK ;

__attribute__((used)) static inline struct genradix_node *genradix_root_to_node(struct genradix_root *r)
{
 return (void *) ((unsigned long) r & ~GENRADIX_DEPTH_MASK);
}
