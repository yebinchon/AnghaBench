
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct inode {int dummy; } ;
struct buffer_head {int dummy; } ;


 int INODE_CACHE (struct inode*) ;
 int mlog_errno (int) ;
 int ocfs2_read_blocks (int ,int ,int,struct buffer_head**,int ,int ) ;
 int ocfs2_validate_quota_block ;

int ocfs2_read_quota_phys_block(struct inode *inode, u64 p_block,
    struct buffer_head **bhp)
{
 int rc;

 *bhp = ((void*)0);
 rc = ocfs2_read_blocks(INODE_CACHE(inode), p_block, 1, bhp, 0,
          ocfs2_validate_quota_block);
 if (rc)
  mlog_errno(rc);
 return rc;
}
