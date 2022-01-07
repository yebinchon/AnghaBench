
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rb_node {int dummy; } ;


 int is_red (struct rb_node*) ;
 struct rb_node* rb_parent (struct rb_node*) ;

__attribute__((used)) static int black_path_count(struct rb_node *rb)
{
 int count;
 for (count = 0; rb; rb = rb_parent(rb))
  count += !is_red(rb);
 return count;
}
