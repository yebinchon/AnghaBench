
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rb_node {scalar_t__ __rb_parent_color; } ;



__attribute__((used)) static inline struct rb_node *rb_red_parent(struct rb_node *red)
{
 return (struct rb_node *)red->__rb_parent_color;
}
