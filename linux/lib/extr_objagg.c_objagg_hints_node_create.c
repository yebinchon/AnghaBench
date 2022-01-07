
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned int user_count; } ;
struct objagg_obj {int obj; TYPE_1__ stats; } ;
struct TYPE_5__ {unsigned int user_count; unsigned int delta_user_count; } ;
struct TYPE_6__ {int is_root; struct objagg_obj* objagg_obj; TYPE_2__ stats; } ;
struct objagg_hints_node {struct objagg_hints_node* parent; int list; int ht_node; TYPE_3__ stats_info; scalar_t__ root_id; int obj; } ;
struct objagg_hints {int node_count; int node_list; int ht_params; int node_ht; int root_count; } ;


 int ENOMEM ;
 struct objagg_hints_node* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int kfree (struct objagg_hints_node*) ;
 struct objagg_hints_node* kzalloc (int,int ) ;
 int list_add (int *,int *) ;
 int memcpy (int ,int *,size_t) ;
 int rhashtable_insert_fast (int *,int *,int ) ;

__attribute__((used)) static struct objagg_hints_node *
objagg_hints_node_create(struct objagg_hints *objagg_hints,
    struct objagg_obj *objagg_obj, size_t obj_size,
    struct objagg_hints_node *parent_hnode)
{
 unsigned int user_count = objagg_obj->stats.user_count;
 struct objagg_hints_node *hnode;
 int err;

 hnode = kzalloc(sizeof(*hnode) + obj_size, GFP_KERNEL);
 if (!hnode)
  return ERR_PTR(-ENOMEM);
 memcpy(hnode->obj, &objagg_obj->obj, obj_size);
 hnode->stats_info.stats.user_count = user_count;
 hnode->stats_info.stats.delta_user_count = user_count;
 if (parent_hnode) {
  parent_hnode->stats_info.stats.delta_user_count += user_count;
 } else {
  hnode->root_id = objagg_hints->root_count++;
  hnode->stats_info.is_root = 1;
 }
 hnode->stats_info.objagg_obj = objagg_obj;

 err = rhashtable_insert_fast(&objagg_hints->node_ht, &hnode->ht_node,
         objagg_hints->ht_params);
 if (err)
  goto err_ht_insert;

 list_add(&hnode->list, &objagg_hints->node_list);
 hnode->parent = parent_hnode;
 objagg_hints->node_count++;

 return hnode;

err_ht_insert:
 kfree(hnode);
 return ERR_PTR(err);
}
