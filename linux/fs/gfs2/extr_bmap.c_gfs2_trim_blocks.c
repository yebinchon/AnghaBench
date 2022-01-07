
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_size; } ;


 int WARN_ON (int) ;
 int do_shrink (struct inode*,int ) ;

void gfs2_trim_blocks(struct inode *inode)
{
 int ret;

 ret = do_shrink(inode, inode->i_size);
 WARN_ON(ret != 0);
}
