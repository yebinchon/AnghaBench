
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsdfs_client {int dummy; } ;
struct inode {int dummy; } ;


 struct nfsdfs_client* __get_nfsdfs_client (struct inode*) ;
 int inode_lock_shared (struct inode*) ;
 int inode_unlock_shared (struct inode*) ;

struct nfsdfs_client *get_nfsdfs_client(struct inode *inode)
{
 struct nfsdfs_client *nc;

 inode_lock_shared(inode);
 nc = __get_nfsdfs_client(inode);
 inode_unlock_shared(inode);
 return nc;
}
