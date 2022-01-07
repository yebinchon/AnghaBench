
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct flow_indr_block_dev {int dummy; } ;


 int flow_indr_setup_block_ht_params ;
 int indr_setup_block_ht ;
 struct flow_indr_block_dev* rhashtable_lookup_fast (int *,struct net_device**,int ) ;

__attribute__((used)) static struct flow_indr_block_dev *
flow_indr_block_dev_lookup(struct net_device *dev)
{
 return rhashtable_lookup_fast(&indr_setup_block_ht, &dev,
          flow_indr_setup_block_ht_params);
}
