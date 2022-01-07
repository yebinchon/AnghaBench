
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nilfs_root {int blocks_count; } ;
struct inode {int dummy; } ;
struct TYPE_2__ {struct nilfs_root* i_root; } ;


 TYPE_1__* NILFS_I (struct inode*) ;
 int atomic64_add (int,int *) ;
 int i_blocksize (struct inode*) ;
 int inode_add_bytes (struct inode*,int) ;

void nilfs_inode_add_blocks(struct inode *inode, int n)
{
 struct nilfs_root *root = NILFS_I(inode)->i_root;

 inode_add_bytes(inode, i_blocksize(inode) * n);
 if (root)
  atomic64_add(n, &root->blocks_count);
}
