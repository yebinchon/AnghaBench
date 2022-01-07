
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rb_node {int dummy; } ;
struct TYPE_2__ {int children; } ;
struct kernfs_node {TYPE_1__ dir; } ;


 scalar_t__ KERNFS_DIR ;
 scalar_t__ kernfs_type (struct kernfs_node*) ;
 struct rb_node* rb_first (int *) ;
 struct kernfs_node* rb_to_kn (struct rb_node*) ;

__attribute__((used)) static struct kernfs_node *kernfs_leftmost_descendant(struct kernfs_node *pos)
{
 struct kernfs_node *last;

 while (1) {
  struct rb_node *rbn;

  last = pos;

  if (kernfs_type(pos) != KERNFS_DIR)
   break;

  rbn = rb_first(&pos->dir.children);
  if (!rbn)
   break;

  pos = rb_to_kn(rbn);
 }

 return last;
}
