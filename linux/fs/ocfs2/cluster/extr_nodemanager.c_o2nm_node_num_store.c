
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct o2nm_node {unsigned long nd_num; int nd_set_attributes; } ;
struct o2nm_cluster {int cl_nodes_lock; int cl_nodes_bitmap; struct o2nm_node** cl_nodes; } ;
struct config_item {int dummy; } ;
typedef int ssize_t ;


 int EBUSY ;
 int EEXIST ;
 int EINVAL ;
 int ERANGE ;
 unsigned long O2NM_MAX_NODES ;
 int O2NM_NODE_ATTR_ADDRESS ;
 int O2NM_NODE_ATTR_NUM ;
 int O2NM_NODE_ATTR_PORT ;
 int o2nm_lock_subsystem () ;
 int o2nm_unlock_subsystem () ;
 int set_bit (unsigned long,int ) ;
 unsigned long simple_strtoul (char*,char**,int ) ;
 scalar_t__ test_and_set_bit (int ,int *) ;
 int test_bit (int ,int *) ;
 struct o2nm_cluster* to_o2nm_cluster_from_node (struct o2nm_node*) ;
 struct o2nm_node* to_o2nm_node (struct config_item*) ;
 int write_lock (int *) ;
 int write_unlock (int *) ;

__attribute__((used)) static ssize_t o2nm_node_num_store(struct config_item *item, const char *page,
       size_t count)
{
 struct o2nm_node *node = to_o2nm_node(item);
 struct o2nm_cluster *cluster;
 unsigned long tmp;
 char *p = (char *)page;
 int ret = 0;

 tmp = simple_strtoul(p, &p, 0);
 if (!p || (*p && (*p != '\n')))
  return -EINVAL;

 if (tmp >= O2NM_MAX_NODES)
  return -ERANGE;





 if (!test_bit(O2NM_NODE_ATTR_ADDRESS, &node->nd_set_attributes) ||
     !test_bit(O2NM_NODE_ATTR_PORT, &node->nd_set_attributes))
  return -EINVAL;

 o2nm_lock_subsystem();
 cluster = to_o2nm_cluster_from_node(node);
 if (!cluster) {
  o2nm_unlock_subsystem();
  return -EINVAL;
 }

 write_lock(&cluster->cl_nodes_lock);
 if (cluster->cl_nodes[tmp])
  ret = -EEXIST;
 else if (test_and_set_bit(O2NM_NODE_ATTR_NUM,
   &node->nd_set_attributes))
  ret = -EBUSY;
 else {
  cluster->cl_nodes[tmp] = node;
  node->nd_num = tmp;
  set_bit(tmp, cluster->cl_nodes_bitmap);
 }
 write_unlock(&cluster->cl_nodes_lock);
 o2nm_unlock_subsystem();

 if (ret)
  return ret;

 return count;
}
