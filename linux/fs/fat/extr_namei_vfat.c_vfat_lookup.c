
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct inode {int i_mode; struct super_block* i_sb; } ;
struct fat_slot_info {int bh; int i_pos; int de; } ;
struct dentry {scalar_t__ d_parent; int d_name; } ;
struct TYPE_2__ {int s_lock; } ;


 int ENOENT ;
 struct dentry* ERR_PTR (int) ;
 scalar_t__ IS_ERR (struct inode*) ;
 TYPE_1__* MSDOS_SB (struct super_block*) ;
 int PTR_ERR (struct inode*) ;
 int S_ISDIR (int ) ;
 int brelse (int ) ;
 struct dentry* d_find_alias (struct inode*) ;
 int d_move (struct dentry*,struct dentry*) ;
 struct dentry* d_splice_alias (struct inode*,struct dentry*) ;
 int dput (struct dentry*) ;
 struct inode* fat_build_inode (struct super_block*,int ,int ) ;
 int inode_query_iversion (struct inode*) ;
 int iput (struct inode*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int vfat_d_version_set (struct dentry*,int ) ;
 int vfat_find (struct inode*,int *,struct fat_slot_info*) ;

__attribute__((used)) static struct dentry *vfat_lookup(struct inode *dir, struct dentry *dentry,
      unsigned int flags)
{
 struct super_block *sb = dir->i_sb;
 struct fat_slot_info sinfo;
 struct inode *inode;
 struct dentry *alias;
 int err;

 mutex_lock(&MSDOS_SB(sb)->s_lock);

 err = vfat_find(dir, &dentry->d_name, &sinfo);
 if (err) {
  if (err == -ENOENT) {
   inode = ((void*)0);
   goto out;
  }
  goto error;
 }

 inode = fat_build_inode(sb, sinfo.de, sinfo.i_pos);
 brelse(sinfo.bh);
 if (IS_ERR(inode)) {
  err = PTR_ERR(inode);
  goto error;
 }

 alias = d_find_alias(inode);




 if (alias && alias->d_parent == dentry->d_parent) {







  if (!S_ISDIR(inode->i_mode))
   d_move(alias, dentry);
  iput(inode);
  mutex_unlock(&MSDOS_SB(sb)->s_lock);
  return alias;
 } else
  dput(alias);

out:
 mutex_unlock(&MSDOS_SB(sb)->s_lock);
 if (!inode)
  vfat_d_version_set(dentry, inode_query_iversion(dir));
 return d_splice_alias(inode, dentry);
error:
 mutex_unlock(&MSDOS_SB(sb)->s_lock);
 return ERR_PTR(err);
}
