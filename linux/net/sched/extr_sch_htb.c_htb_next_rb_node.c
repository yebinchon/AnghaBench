
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rb_node {int dummy; } ;


 struct rb_node* rb_next (struct rb_node*) ;

__attribute__((used)) static inline void htb_next_rb_node(struct rb_node **n)
{
 *n = rb_next(*n);
}
