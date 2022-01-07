
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kernfs_node {int dummy; } ;
struct iattr {int dummy; } ;


 int __kernfs_setattr (struct kernfs_node*,struct iattr const*) ;
 int kernfs_mutex ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int kernfs_setattr(struct kernfs_node *kn, const struct iattr *iattr)
{
 int ret;

 mutex_lock(&kernfs_mutex);
 ret = __kernfs_setattr(kn, iattr);
 mutex_unlock(&kernfs_mutex);
 return ret;
}
