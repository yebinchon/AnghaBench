
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct config_group {int dummy; } ;
struct o2nm_node_group {struct config_group cl_group; int cl_fence_method; int cl_keepalive_delay_ms; int cl_idle_timeout_ms; int cl_reconnect_delay_ms; int cl_node_ip_tree; int cl_nodes_lock; struct config_group ns_group; } ;
struct o2nm_cluster {struct config_group cl_group; int cl_fence_method; int cl_keepalive_delay_ms; int cl_idle_timeout_ms; int cl_reconnect_delay_ms; int cl_node_ip_tree; int cl_nodes_lock; struct config_group ns_group; } ;


 int ENOMEM ;
 int ENOSPC ;
 struct config_group* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int O2NET_IDLE_TIMEOUT_MS_DEFAULT ;
 int O2NET_KEEPALIVE_DELAY_MS_DEFAULT ;
 int O2NET_RECONNECT_DELAY_MS_DEFAULT ;
 int O2NM_FENCE_RESET ;
 int RB_ROOT ;
 int config_group_init_type_name (struct config_group*,char const*,int *) ;
 int configfs_add_default_group (struct config_group*,struct config_group*) ;
 int kfree (struct o2nm_node_group*) ;
 struct o2nm_node_group* kzalloc (int,int ) ;
 struct config_group* o2hb_alloc_hb_set () ;
 int o2hb_free_hb_set (struct config_group*) ;
 int o2nm_cluster_type ;
 int o2nm_node_group_type ;
 struct o2nm_node_group* o2nm_single_cluster ;
 int rwlock_init (int *) ;

__attribute__((used)) static struct config_group *o2nm_cluster_group_make_group(struct config_group *group,
         const char *name)
{
 struct o2nm_cluster *cluster = ((void*)0);
 struct o2nm_node_group *ns = ((void*)0);
 struct config_group *o2hb_group = ((void*)0), *ret = ((void*)0);



 if (o2nm_single_cluster)
  return ERR_PTR(-ENOSPC);

 cluster = kzalloc(sizeof(struct o2nm_cluster), GFP_KERNEL);
 ns = kzalloc(sizeof(struct o2nm_node_group), GFP_KERNEL);
 o2hb_group = o2hb_alloc_hb_set();
 if (cluster == ((void*)0) || ns == ((void*)0) || o2hb_group == ((void*)0))
  goto out;

 config_group_init_type_name(&cluster->cl_group, name,
        &o2nm_cluster_type);
 configfs_add_default_group(&ns->ns_group, &cluster->cl_group);

 config_group_init_type_name(&ns->ns_group, "node",
        &o2nm_node_group_type);
 configfs_add_default_group(o2hb_group, &cluster->cl_group);

 rwlock_init(&cluster->cl_nodes_lock);
 cluster->cl_node_ip_tree = RB_ROOT;
 cluster->cl_reconnect_delay_ms = O2NET_RECONNECT_DELAY_MS_DEFAULT;
 cluster->cl_idle_timeout_ms = O2NET_IDLE_TIMEOUT_MS_DEFAULT;
 cluster->cl_keepalive_delay_ms = O2NET_KEEPALIVE_DELAY_MS_DEFAULT;
 cluster->cl_fence_method = O2NM_FENCE_RESET;

 ret = &cluster->cl_group;
 o2nm_single_cluster = cluster;

out:
 if (ret == ((void*)0)) {
  kfree(cluster);
  kfree(ns);
  o2hb_free_hb_set(o2hb_group);
  ret = ERR_PTR(-ENOMEM);
 }

 return ret;
}
