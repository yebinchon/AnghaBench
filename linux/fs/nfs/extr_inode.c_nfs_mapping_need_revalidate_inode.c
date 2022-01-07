
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;


 int NFS_INO_REVAL_PAGECACHE ;
 scalar_t__ NFS_STALE (struct inode*) ;
 scalar_t__ nfs_check_cache_invalid (struct inode*,int ) ;

bool nfs_mapping_need_revalidate_inode(struct inode *inode)
{
 return nfs_check_cache_invalid(inode, NFS_INO_REVAL_PAGECACHE) ||
  NFS_STALE(inode);
}
