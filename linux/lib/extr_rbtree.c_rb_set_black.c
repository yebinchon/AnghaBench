
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rb_node {int __rb_parent_color; } ;


 int RB_BLACK ;

__attribute__((used)) static inline void rb_set_black(struct rb_node *rb)
{
 rb->__rb_parent_color |= RB_BLACK;
}
