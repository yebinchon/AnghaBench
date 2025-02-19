
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct rb_node* rb_node; } ;
struct TYPE_4__ {TYPE_1__ rb_root; } ;
struct rblist {int (* node_cmp ) (struct rb_node*,void const*) ;int nr_entries; TYPE_2__ entries; struct rb_node* (* node_new ) (struct rblist*,void const*) ;} ;
struct rb_node {struct rb_node* rb_right; struct rb_node* rb_left; } ;


 int EEXIST ;
 int ENOMEM ;
 int rb_insert_color_cached (struct rb_node*,TYPE_2__*,int) ;
 int rb_link_node (struct rb_node*,struct rb_node*,struct rb_node**) ;
 int stub1 (struct rb_node*,void const*) ;
 struct rb_node* stub2 (struct rblist*,void const*) ;

int rblist__add_node(struct rblist *rblist, const void *new_entry)
{
 struct rb_node **p = &rblist->entries.rb_root.rb_node;
 struct rb_node *parent = ((void*)0), *new_node;
 bool leftmost = 1;

 while (*p != ((void*)0)) {
  int rc;

  parent = *p;

  rc = rblist->node_cmp(parent, new_entry);
  if (rc > 0)
   p = &(*p)->rb_left;
  else if (rc < 0) {
   p = &(*p)->rb_right;
   leftmost = 0;
  }
  else
   return -EEXIST;
 }

 new_node = rblist->node_new(rblist, new_entry);
 if (new_node == ((void*)0))
  return -ENOMEM;

 rb_link_node(new_node, parent, p);
 rb_insert_color_cached(new_node, &rblist->entries, leftmost);
 ++rblist->nr_entries;

 return 0;
}
