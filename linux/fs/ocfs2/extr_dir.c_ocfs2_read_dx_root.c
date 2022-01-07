
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct ocfs2_dinode {int i_dx_root; } ;
struct inode {int dummy; } ;
struct buffer_head {int dummy; } ;


 int INODE_CACHE (struct inode*) ;
 int le64_to_cpu (int ) ;
 int ocfs2_read_block (int ,int ,struct buffer_head**,int ) ;
 int ocfs2_validate_dx_root ;

__attribute__((used)) static int ocfs2_read_dx_root(struct inode *dir, struct ocfs2_dinode *di,
         struct buffer_head **dx_root_bh)
{
 int ret;
 u64 blkno = le64_to_cpu(di->i_dx_root);
 struct buffer_head *tmp = *dx_root_bh;

 ret = ocfs2_read_block(INODE_CACHE(dir), blkno, &tmp,
          ocfs2_validate_dx_root);


 if (!ret && !*dx_root_bh)
  *dx_root_bh = tmp;

 return ret;
}
