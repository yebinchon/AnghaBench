
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct jffs2_sb_info {int dummy; } ;
struct jffs2_inode_info {struct jffs2_full_dirent* dents; } ;
struct jffs2_full_dirent {scalar_t__ ino; struct jffs2_full_dirent* next; } ;
struct inode {int i_ctime; int i_mtime; int i_sb; } ;
struct TYPE_2__ {int len; int name; } ;
struct dentry {TYPE_1__ d_name; } ;


 int ENOTEMPTY ;
 int ITIME (int ) ;
 struct jffs2_inode_info* JFFS2_INODE_INFO (struct inode*) ;
 int JFFS2_NOW () ;
 struct jffs2_sb_info* JFFS2_SB_INFO (int ) ;
 int clear_nlink (struct inode*) ;
 struct inode* d_inode (struct dentry*) ;
 int drop_nlink (struct inode*) ;
 int jffs2_do_unlink (struct jffs2_sb_info*,struct jffs2_inode_info*,int ,int ,struct jffs2_inode_info*,int ) ;

__attribute__((used)) static int jffs2_rmdir (struct inode *dir_i, struct dentry *dentry)
{
 struct jffs2_sb_info *c = JFFS2_SB_INFO(dir_i->i_sb);
 struct jffs2_inode_info *dir_f = JFFS2_INODE_INFO(dir_i);
 struct jffs2_inode_info *f = JFFS2_INODE_INFO(d_inode(dentry));
 struct jffs2_full_dirent *fd;
 int ret;
 uint32_t now = JFFS2_NOW();

 for (fd = f->dents ; fd; fd = fd->next) {
  if (fd->ino)
   return -ENOTEMPTY;
 }

 ret = jffs2_do_unlink(c, dir_f, dentry->d_name.name,
         dentry->d_name.len, f, now);
 if (!ret) {
  dir_i->i_mtime = dir_i->i_ctime = ITIME(now);
  clear_nlink(d_inode(dentry));
  drop_nlink(dir_i);
 }
 return ret;
}
