
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct flow_indr_block_dev {int ht_node; scalar_t__ refcnt; } ;


 int flow_indr_setup_block_ht_params ;
 int indr_setup_block_ht ;
 int kfree (struct flow_indr_block_dev*) ;
 int rhashtable_remove_fast (int *,int *,int ) ;

__attribute__((used)) static void flow_indr_block_dev_put(struct flow_indr_block_dev *indr_dev)
{
 if (--indr_dev->refcnt)
  return;

 rhashtable_remove_fast(&indr_setup_block_ht, &indr_dev->ht_node,
          flow_indr_setup_block_ht_params);
 kfree(indr_dev);
}
