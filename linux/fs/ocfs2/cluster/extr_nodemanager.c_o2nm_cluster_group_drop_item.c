
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct o2nm_cluster {int cl_group; } ;
struct config_item {int dummy; } ;
struct config_group {int dummy; } ;


 int BUG_ON (int) ;
 int config_item_put (struct config_item*) ;
 int configfs_remove_default_groups (int *) ;
 struct o2nm_cluster* o2nm_single_cluster ;
 struct o2nm_cluster* to_o2nm_cluster (struct config_item*) ;

__attribute__((used)) static void o2nm_cluster_group_drop_item(struct config_group *group, struct config_item *item)
{
 struct o2nm_cluster *cluster = to_o2nm_cluster(item);

 BUG_ON(o2nm_single_cluster != cluster);
 o2nm_single_cluster = ((void*)0);

 configfs_remove_default_groups(&cluster->cl_group);
 config_item_put(item);
}
