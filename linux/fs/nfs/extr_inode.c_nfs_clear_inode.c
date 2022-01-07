
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct TYPE_2__ {int open_files; } ;


 TYPE_1__* NFS_I (struct inode*) ;
 int WARN_ON_ONCE (int) ;
 int list_empty (int *) ;
 int nfs_access_zap_cache (struct inode*) ;
 int nfs_fscache_clear_inode (struct inode*) ;
 int nfs_have_writebacks (struct inode*) ;
 int nfs_zap_acl_cache (struct inode*) ;

void nfs_clear_inode(struct inode *inode)
{



 WARN_ON_ONCE(nfs_have_writebacks(inode));
 WARN_ON_ONCE(!list_empty(&NFS_I(inode)->open_files));
 nfs_zap_acl_cache(inode);
 nfs_access_zap_cache(inode);
 nfs_fscache_clear_inode(inode);
}
