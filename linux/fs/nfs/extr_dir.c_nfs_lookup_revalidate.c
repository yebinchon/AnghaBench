
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int dummy; } ;


 int __nfs_lookup_revalidate (struct dentry*,unsigned int,int ) ;
 int nfs_do_lookup_revalidate ;

__attribute__((used)) static int nfs_lookup_revalidate(struct dentry *dentry, unsigned int flags)
{
 return __nfs_lookup_revalidate(dentry, flags, nfs_do_lookup_revalidate);
}
