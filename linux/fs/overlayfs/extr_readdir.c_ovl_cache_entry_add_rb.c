
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct rb_node {int dummy; } ;
struct ovl_readdir_data {int err; TYPE_1__* root; int list; } ;
struct ovl_cache_entry {int node; int l_node; } ;
struct TYPE_2__ {struct rb_node* rb_node; } ;


 int ENOMEM ;
 int list_add_tail (int *,int ) ;
 scalar_t__ ovl_cache_entry_find_link (char const*,int,struct rb_node***,struct rb_node**) ;
 struct ovl_cache_entry* ovl_cache_entry_new (struct ovl_readdir_data*,char const*,int,int ,unsigned int) ;
 int rb_insert_color (int *,TYPE_1__*) ;
 int rb_link_node (int *,struct rb_node*,struct rb_node**) ;

__attribute__((used)) static int ovl_cache_entry_add_rb(struct ovl_readdir_data *rdd,
      const char *name, int len, u64 ino,
      unsigned int d_type)
{
 struct rb_node **newp = &rdd->root->rb_node;
 struct rb_node *parent = ((void*)0);
 struct ovl_cache_entry *p;

 if (ovl_cache_entry_find_link(name, len, &newp, &parent))
  return 0;

 p = ovl_cache_entry_new(rdd, name, len, ino, d_type);
 if (p == ((void*)0)) {
  rdd->err = -ENOMEM;
  return -ENOMEM;
 }

 list_add_tail(&p->l_node, rdd->list);
 rb_link_node(&p->node, parent, newp);
 rb_insert_color(&p->node, rdd->root);

 return 0;
}
