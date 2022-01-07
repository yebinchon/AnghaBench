
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct buffer_head {int dummy; } ;
struct TYPE_2__ {int ip_blkno; } ;


 int INODE_CACHE (struct inode*) ;
 TYPE_1__* OCFS2_I (struct inode*) ;
 int ocfs2_read_blocks (int ,int ,int,struct buffer_head**,int,int ) ;
 int ocfs2_validate_inode_block ;

int ocfs2_read_inode_block_full(struct inode *inode, struct buffer_head **bh,
    int flags)
{
 int rc;
 struct buffer_head *tmp = *bh;

 rc = ocfs2_read_blocks(INODE_CACHE(inode), OCFS2_I(inode)->ip_blkno,
          1, &tmp, flags, ocfs2_validate_inode_block);


 if (!rc && !*bh)
  *bh = tmp;

 return rc;
}
