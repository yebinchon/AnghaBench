
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;


 int nfs_attribute_timeout (struct inode*) ;
 scalar_t__ nfs_have_delegated_attributes (struct inode*) ;

int nfs_attribute_cache_expired(struct inode *inode)
{
 if (nfs_have_delegated_attributes(inode))
  return 0;
 return nfs_attribute_timeout(inode);
}
