
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_dm_hw_metadata {struct net_dm_hw_metadata const* trap_group_name; struct net_dm_hw_metadata const* trap_name; scalar_t__ input_dev; } ;


 int dev_put (scalar_t__) ;
 int kfree (struct net_dm_hw_metadata const*) ;

__attribute__((used)) static void
net_dm_hw_metadata_free(const struct net_dm_hw_metadata *hw_metadata)
{
 if (hw_metadata->input_dev)
  dev_put(hw_metadata->input_dev);
 kfree(hw_metadata->trap_name);
 kfree(hw_metadata->trap_group_name);
 kfree(hw_metadata);
}
