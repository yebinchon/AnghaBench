
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct inode {int dummy; } ;
struct buffer_head {int dummy; } ;


 int INODE_CACHE (struct inode*) ;
 int ocfs2_read_block (int ,int ,struct buffer_head**,int ) ;
 int ocfs2_validate_dx_leaf ;

__attribute__((used)) static int ocfs2_read_dx_leaf(struct inode *dir, u64 blkno,
         struct buffer_head **dx_leaf_bh)
{
 int ret;
 struct buffer_head *tmp = *dx_leaf_bh;

 ret = ocfs2_read_block(INODE_CACHE(dir), blkno, &tmp,
          ocfs2_validate_dx_leaf);


 if (!ret && !*dx_leaf_bh)
  *dx_leaf_bh = tmp;

 return ret;
}
