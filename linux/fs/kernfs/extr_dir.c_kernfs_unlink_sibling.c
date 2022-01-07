
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct kernfs_node {int rb; TYPE_2__* parent; } ;
struct TYPE_3__ {int children; int subdirs; } ;
struct TYPE_4__ {TYPE_1__ dir; } ;


 scalar_t__ KERNFS_DIR ;
 int RB_CLEAR_NODE (int *) ;
 scalar_t__ RB_EMPTY_NODE (int *) ;
 scalar_t__ kernfs_type (struct kernfs_node*) ;
 int rb_erase (int *,int *) ;

__attribute__((used)) static bool kernfs_unlink_sibling(struct kernfs_node *kn)
{
 if (RB_EMPTY_NODE(&kn->rb))
  return 0;

 if (kernfs_type(kn) == KERNFS_DIR)
  kn->parent->dir.subdirs--;

 rb_erase(&kn->rb, &kn->parent->dir.children);
 RB_CLEAR_NODE(&kn->rb);
 return 1;
}
