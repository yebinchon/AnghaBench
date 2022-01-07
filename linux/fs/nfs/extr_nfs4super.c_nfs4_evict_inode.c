
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_data; } ;


 int NFS_I (struct inode*) ;
 int clear_inode (struct inode*) ;
 int nfs_clear_inode (struct inode*) ;
 int nfs_inode_return_delegation_noreclaim (struct inode*) ;
 int pnfs_destroy_layout (int ) ;
 int pnfs_return_layout (struct inode*) ;
 int truncate_inode_pages_final (int *) ;

__attribute__((used)) static void nfs4_evict_inode(struct inode *inode)
{
 truncate_inode_pages_final(&inode->i_data);
 clear_inode(inode);

 nfs_inode_return_delegation_noreclaim(inode);

 pnfs_return_layout(inode);
 pnfs_destroy_layout(NFS_I(inode));

 nfs_clear_inode(inode);
}
