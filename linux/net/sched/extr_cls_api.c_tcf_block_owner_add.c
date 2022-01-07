
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcf_block_owner_item {int binder_type; int list; struct Qdisc* q; } ;
struct tcf_block {int owner_list; } ;
struct Qdisc {int dummy; } ;
typedef enum flow_block_binder_type { ____Placeholder_flow_block_binder_type } flow_block_binder_type ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct tcf_block_owner_item* kmalloc (int,int ) ;
 int list_add (int *,int *) ;

__attribute__((used)) static int tcf_block_owner_add(struct tcf_block *block,
          struct Qdisc *q,
          enum flow_block_binder_type binder_type)
{
 struct tcf_block_owner_item *item;

 item = kmalloc(sizeof(*item), GFP_KERNEL);
 if (!item)
  return -ENOMEM;
 item->q = q;
 item->binder_type = binder_type;
 list_add(&item->list, &block->owner_list);
 return 0;
}
