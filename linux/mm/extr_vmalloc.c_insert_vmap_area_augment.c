
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmap_area {int dummy; } ;
struct rb_root {int dummy; } ;
struct rb_node {int dummy; } ;
struct list_head {int dummy; } ;


 int augment_tree_propagate_from (struct vmap_area*) ;
 struct rb_node** find_va_links (struct vmap_area*,struct rb_root*,struct rb_node*,struct rb_node**) ;
 int link_va (struct vmap_area*,struct rb_root*,struct rb_node*,struct rb_node**,struct list_head*) ;

__attribute__((used)) static void
insert_vmap_area_augment(struct vmap_area *va,
 struct rb_node *from, struct rb_root *root,
 struct list_head *head)
{
 struct rb_node **link;
 struct rb_node *parent;

 if (from)
  link = find_va_links(va, ((void*)0), from, &parent);
 else
  link = find_va_links(va, root, ((void*)0), &parent);

 link_va(va, root, parent, link, head);
 augment_tree_propagate_from(va);
}
