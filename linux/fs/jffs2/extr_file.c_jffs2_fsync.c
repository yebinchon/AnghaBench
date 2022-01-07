
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct jffs2_sb_info {int dummy; } ;
struct inode {int i_ino; int i_sb; } ;
struct file {TYPE_1__* f_mapping; } ;
typedef int loff_t ;
struct TYPE_2__ {struct inode* host; } ;


 struct jffs2_sb_info* JFFS2_SB_INFO (int ) ;
 int file_write_and_wait_range (struct file*,int ,int ) ;
 int inode_lock (struct inode*) ;
 int inode_unlock (struct inode*) ;
 int jffs2_flush_wbuf_gc (struct jffs2_sb_info*,int ) ;

int jffs2_fsync(struct file *filp, loff_t start, loff_t end, int datasync)
{
 struct inode *inode = filp->f_mapping->host;
 struct jffs2_sb_info *c = JFFS2_SB_INFO(inode->i_sb);
 int ret;

 ret = file_write_and_wait_range(filp, start, end);
 if (ret)
  return ret;

 inode_lock(inode);

 jffs2_flush_wbuf_gc(c, inode->i_ino);
 inode_unlock(inode);

 return 0;
}
