
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rb_node {int dummy; } ;
struct kernfs_node {void const* ns; int rb; } ;
typedef int ino_t ;


 int kernfs_active (struct kernfs_node*) ;
 struct kernfs_node* kernfs_dir_pos (void const*,struct kernfs_node*,int ,struct kernfs_node*) ;
 struct rb_node* rb_next (int *) ;
 struct kernfs_node* rb_to_kn (struct rb_node*) ;

__attribute__((used)) static struct kernfs_node *kernfs_dir_next_pos(const void *ns,
 struct kernfs_node *parent, ino_t ino, struct kernfs_node *pos)
{
 pos = kernfs_dir_pos(ns, parent, ino, pos);
 if (pos) {
  do {
   struct rb_node *node = rb_next(&pos->rb);
   if (!node)
    pos = ((void*)0);
   else
    pos = rb_to_kn(node);
  } while (pos && (!kernfs_active(pos) || pos->ns != ns));
 }
 return pos;
}
