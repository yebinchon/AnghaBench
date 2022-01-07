
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rb_root {struct rb_node* rb_node; } ;
struct rb_node {int dummy; } ;
struct TYPE_2__ {struct rb_node* rb_left; struct rb_node* rb_right; } ;
struct ovl_cache_entry {int len; TYPE_1__ node; int name; } ;


 struct ovl_cache_entry* ovl_cache_entry_from_node (struct rb_node*) ;
 int strncmp (char const*,int ,int) ;

__attribute__((used)) static struct ovl_cache_entry *ovl_cache_entry_find(struct rb_root *root,
          const char *name, int len)
{
 struct rb_node *node = root->rb_node;
 int cmp;

 while (node) {
  struct ovl_cache_entry *p = ovl_cache_entry_from_node(node);

  cmp = strncmp(name, p->name, len);
  if (cmp > 0)
   node = p->node.rb_right;
  else if (cmp < 0 || len < p->len)
   node = p->node.rb_left;
  else
   return p;
 }

 return ((void*)0);
}
