
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ src; scalar_t__ dst; } ;
struct TYPE_4__ {scalar_t__ src; scalar_t__ dst; } ;
struct TYPE_6__ {TYPE_2__ tp_max; TYPE_1__ tp_min; } ;
struct fl_flow_mask {int ht; int list; int ht_node; int refcnt; int filters; TYPE_3__ key; int dissector; int flags; } ;
struct cls_fl_head {int masks_lock; int masks; int ht; } ;


 int ENOMEM ;
 struct fl_flow_mask* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD_RCU (int *) ;
 int TCA_FLOWER_MASK_FLAGS_RANGE ;
 int fl_init_dissector (int *,TYPE_3__*) ;
 int fl_init_mask_hashtable (struct fl_flow_mask*) ;
 int fl_mask_copy (struct fl_flow_mask*,struct fl_flow_mask*) ;
 int kfree (struct fl_flow_mask*) ;
 struct fl_flow_mask* kzalloc (int,int ) ;
 int list_add_tail_rcu (int *,int *) ;
 int mask_ht_params ;
 int refcount_set (int *,int) ;
 int rhashtable_destroy (int *) ;
 int rhashtable_replace_fast (int *,int *,int *,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static struct fl_flow_mask *fl_create_new_mask(struct cls_fl_head *head,
            struct fl_flow_mask *mask)
{
 struct fl_flow_mask *newmask;
 int err;

 newmask = kzalloc(sizeof(*newmask), GFP_KERNEL);
 if (!newmask)
  return ERR_PTR(-ENOMEM);

 fl_mask_copy(newmask, mask);

 if ((newmask->key.tp_min.dst && newmask->key.tp_max.dst) ||
     (newmask->key.tp_min.src && newmask->key.tp_max.src))
  newmask->flags |= TCA_FLOWER_MASK_FLAGS_RANGE;

 err = fl_init_mask_hashtable(newmask);
 if (err)
  goto errout_free;

 fl_init_dissector(&newmask->dissector, &newmask->key);

 INIT_LIST_HEAD_RCU(&newmask->filters);

 refcount_set(&newmask->refcnt, 1);
 err = rhashtable_replace_fast(&head->ht, &mask->ht_node,
          &newmask->ht_node, mask_ht_params);
 if (err)
  goto errout_destroy;

 spin_lock(&head->masks_lock);
 list_add_tail_rcu(&newmask->list, &head->masks);
 spin_unlock(&head->masks_lock);

 return newmask;

errout_destroy:
 rhashtable_destroy(&newmask->ht);
errout_free:
 kfree(newmask);

 return ERR_PTR(err);
}
