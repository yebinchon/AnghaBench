
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kernfs_node {int dummy; } ;


 int __kernfs_remove (struct kernfs_node*) ;
 int kernfs_mutex ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void kernfs_remove(struct kernfs_node *kn)
{
 mutex_lock(&kernfs_mutex);
 __kernfs_remove(kn);
 mutex_unlock(&kernfs_mutex);
}
