
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct flow_indr_block_dev {int refcnt; int ht_node; struct net_device* dev; int cb_list; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 struct flow_indr_block_dev* flow_indr_block_dev_lookup (struct net_device*) ;
 int flow_indr_setup_block_ht_params ;
 int indr_setup_block_ht ;
 int kfree (struct flow_indr_block_dev*) ;
 struct flow_indr_block_dev* kzalloc (int,int ) ;
 scalar_t__ rhashtable_insert_fast (int *,int *,int ) ;

__attribute__((used)) static struct flow_indr_block_dev *
flow_indr_block_dev_get(struct net_device *dev)
{
 struct flow_indr_block_dev *indr_dev;

 indr_dev = flow_indr_block_dev_lookup(dev);
 if (indr_dev)
  goto inc_ref;

 indr_dev = kzalloc(sizeof(*indr_dev), GFP_KERNEL);
 if (!indr_dev)
  return ((void*)0);

 INIT_LIST_HEAD(&indr_dev->cb_list);
 indr_dev->dev = dev;
 if (rhashtable_insert_fast(&indr_setup_block_ht, &indr_dev->ht_node,
       flow_indr_setup_block_ht_params)) {
  kfree(indr_dev);
  return ((void*)0);
 }

inc_ref:
 indr_dev->refcnt++;
 return indr_dev;
}
