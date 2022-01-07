
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kernfs_node {int dummy; } ;
struct kernfs_iattrs {int dummy; } ;


 struct kernfs_iattrs* __kernfs_iattrs (struct kernfs_node*,int) ;

__attribute__((used)) static struct kernfs_iattrs *kernfs_iattrs(struct kernfs_node *kn)
{
 return __kernfs_iattrs(kn, 1);
}
