
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cgroup_namespace {int ns; int user_ns; int ucounts; int root_cset; } ;


 int dec_cgroup_namespaces (int ) ;
 int kfree (struct cgroup_namespace*) ;
 int ns_free_inum (int *) ;
 int put_css_set (int ) ;
 int put_user_ns (int ) ;

void free_cgroup_ns(struct cgroup_namespace *ns)
{
 put_css_set(ns->root_cset);
 dec_cgroup_namespaces(ns->ucounts);
 put_user_ns(ns->user_ns);
 ns_free_inum(&ns->ns);
 kfree(ns);
}
