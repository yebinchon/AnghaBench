
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union kernfs_node_id {int dummy; } kernfs_node_id ;
struct kernfs_node {int dummy; } ;
struct TYPE_2__ {int kf_root; } ;


 TYPE_1__ cgrp_dfl_root ;
 struct kernfs_node* kernfs_get_node_by_id (int ,union kernfs_node_id const*) ;
 int kernfs_path (struct kernfs_node*,char*,size_t) ;
 int kernfs_put (struct kernfs_node*) ;

void cgroup_path_from_kernfs_id(const union kernfs_node_id *id,
     char *buf, size_t buflen)
{
 struct kernfs_node *kn;

 kn = kernfs_get_node_by_id(cgrp_dfl_root.kf_root, id);
 if (!kn)
  return;
 kernfs_path(kn, buf, buflen);
 kernfs_put(kn);
}
