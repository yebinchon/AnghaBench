
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct jffs2_sb_info {int dummy; } ;
struct jffs2_inode_info {TYPE_2__* inocache; } ;
struct inode {int i_ctime; int i_mtime; int i_sb; } ;
struct TYPE_3__ {int len; int name; } ;
struct dentry {TYPE_1__ d_name; } ;
struct TYPE_4__ {int pino_nlink; } ;


 int ITIME (int ) ;
 struct jffs2_inode_info* JFFS2_INODE_INFO (struct inode*) ;
 int JFFS2_NOW () ;
 struct jffs2_sb_info* JFFS2_SB_INFO (int ) ;
 struct inode* d_inode (struct dentry*) ;
 int jffs2_do_unlink (struct jffs2_sb_info*,struct jffs2_inode_info*,int ,int ,struct jffs2_inode_info*,int ) ;
 int set_nlink (struct inode*,int ) ;

__attribute__((used)) static int jffs2_unlink(struct inode *dir_i, struct dentry *dentry)
{
 struct jffs2_sb_info *c = JFFS2_SB_INFO(dir_i->i_sb);
 struct jffs2_inode_info *dir_f = JFFS2_INODE_INFO(dir_i);
 struct jffs2_inode_info *dead_f = JFFS2_INODE_INFO(d_inode(dentry));
 int ret;
 uint32_t now = JFFS2_NOW();

 ret = jffs2_do_unlink(c, dir_f, dentry->d_name.name,
         dentry->d_name.len, dead_f, now);
 if (dead_f->inocache)
  set_nlink(d_inode(dentry), dead_f->inocache->pino_nlink);
 if (!ret)
  dir_i->i_mtime = dir_i->i_ctime = ITIME(now);
 return ret;
}
