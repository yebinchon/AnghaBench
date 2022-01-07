
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;


 int dquot_alloc_inode (struct inode*) ;
 int dquot_alloc_space_nodirty (struct inode*,int ) ;
 int dquot_free_inode (struct inode*) ;
 int round_up_cluster (struct inode*,size_t) ;

__attribute__((used)) static int ext4_xattr_inode_alloc_quota(struct inode *inode, size_t len)
{
 int err;

 err = dquot_alloc_inode(inode);
 if (err)
  return err;
 err = dquot_alloc_space_nodirty(inode, round_up_cluster(inode, len));
 if (err)
  dquot_free_inode(inode);
 return err;
}
