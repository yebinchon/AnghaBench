
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
 int ocfs2_validate_dx_leaf ;

__attribute__((used)) static int ocfs2_read_dx_leaves(struct inode *dir, u64 start, int num,
    struct buffer_head **dx_leaf_bhs)
{
 int ret;

 ret = ocfs2_read_blocks(INODE_CACHE(dir), start, num, dx_leaf_bhs, 0,
    ocfs2_validate_dx_leaf);
 if (ret)
  mlog_errno(ret);

 return ret;
}
