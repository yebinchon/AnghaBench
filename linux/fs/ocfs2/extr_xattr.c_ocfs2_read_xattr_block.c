
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct inode {int dummy; } ;
struct buffer_head {int dummy; } ;


 int INODE_CACHE (struct inode*) ;
 int ocfs2_read_block (int ,int ,struct buffer_head**,int ) ;
 int ocfs2_validate_xattr_block ;

__attribute__((used)) static int ocfs2_read_xattr_block(struct inode *inode, u64 xb_blkno,
      struct buffer_head **bh)
{
 int rc;
 struct buffer_head *tmp = *bh;

 rc = ocfs2_read_block(INODE_CACHE(inode), xb_blkno, &tmp,
         ocfs2_validate_xattr_block);


 if (!rc && !*bh)
  *bh = tmp;

 return rc;
}
