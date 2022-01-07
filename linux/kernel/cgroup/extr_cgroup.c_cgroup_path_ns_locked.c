
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cgroup_namespace {int root_cset; } ;
struct cgroup {int kn; int root; } ;


 struct cgroup* cset_cgroup_from_root (int ,int ) ;
 int kernfs_path_from_node (int ,int ,char*,size_t) ;

int cgroup_path_ns_locked(struct cgroup *cgrp, char *buf, size_t buflen,
     struct cgroup_namespace *ns)
{
 struct cgroup *root = cset_cgroup_from_root(ns->root_cset, cgrp->root);

 return kernfs_path_from_node(cgrp->kn, root->kn, buf, buflen);
}
