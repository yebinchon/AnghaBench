
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct jffs2_sb_info {int dummy; } ;
struct jffs2_inode_info {int sem; TYPE_2__* inocache; } ;
struct inode {int i_mode; int i_ctime; int i_mtime; } ;
struct TYPE_3__ {int len; int name; } ;
struct dentry {TYPE_1__ d_name; int d_sb; } ;
struct TYPE_4__ {int pino_nlink; int ino; } ;


 int DT_REG ;
 int EIO ;
 int EPERM ;
 int ITIME (int ) ;
 struct jffs2_inode_info* JFFS2_INODE_INFO (struct inode*) ;
 int JFFS2_NOW () ;
 struct jffs2_sb_info* JFFS2_SB_INFO (int ) ;
 int S_IFMT ;
 struct inode* d_inode (struct dentry*) ;
 int d_instantiate (struct dentry*,struct inode*) ;
 scalar_t__ d_is_dir (struct dentry*) ;
 int ihold (struct inode*) ;
 int jffs2_do_link (struct jffs2_sb_info*,struct jffs2_inode_info*,int ,int,int ,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int set_nlink (struct inode*,int ) ;

__attribute__((used)) static int jffs2_link (struct dentry *old_dentry, struct inode *dir_i, struct dentry *dentry)
{
 struct jffs2_sb_info *c = JFFS2_SB_INFO(old_dentry->d_sb);
 struct jffs2_inode_info *f = JFFS2_INODE_INFO(d_inode(old_dentry));
 struct jffs2_inode_info *dir_f = JFFS2_INODE_INFO(dir_i);
 int ret;
 uint8_t type;
 uint32_t now;


 if (!f->inocache)
  return -EIO;

 if (d_is_dir(old_dentry))
  return -EPERM;


 type = (d_inode(old_dentry)->i_mode & S_IFMT) >> 12;
 if (!type) type = DT_REG;

 now = JFFS2_NOW();
 ret = jffs2_do_link(c, dir_f, f->inocache->ino, type, dentry->d_name.name, dentry->d_name.len, now);

 if (!ret) {
  mutex_lock(&f->sem);
  set_nlink(d_inode(old_dentry), ++f->inocache->pino_nlink);
  mutex_unlock(&f->sem);
  d_instantiate(dentry, d_inode(old_dentry));
  dir_i->i_mtime = dir_i->i_ctime = ITIME(now);
  ihold(d_inode(old_dentry));
 }
 return ret;
}
