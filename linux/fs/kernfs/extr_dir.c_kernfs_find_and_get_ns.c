
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kernfs_node {int dummy; } ;


 struct kernfs_node* kernfs_find_ns (struct kernfs_node*,char const*,void const*) ;
 int kernfs_get (struct kernfs_node*) ;
 int kernfs_mutex ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

struct kernfs_node *kernfs_find_and_get_ns(struct kernfs_node *parent,
        const char *name, const void *ns)
{
 struct kernfs_node *kn;

 mutex_lock(&kernfs_mutex);
 kn = kernfs_find_ns(parent, name, ns);
 kernfs_get(kn);
 mutex_unlock(&kernfs_mutex);

 return kn;
}
