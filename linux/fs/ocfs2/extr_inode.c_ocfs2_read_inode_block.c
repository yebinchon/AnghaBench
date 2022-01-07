
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct buffer_head {int dummy; } ;


 int ocfs2_read_inode_block_full (struct inode*,struct buffer_head**,int ) ;

int ocfs2_read_inode_block(struct inode *inode, struct buffer_head **bh)
{
 return ocfs2_read_inode_block_full(inode, bh, 0);
}
