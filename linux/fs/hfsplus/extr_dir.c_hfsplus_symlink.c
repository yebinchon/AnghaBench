
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_ino; int i_sb; } ;
struct hfsplus_sb_info {int vh_mutex; } ;
struct dentry {int d_name; } ;


 int ENOMEM ;
 int EOPNOTSUPP ;
 struct hfsplus_sb_info* HFSPLUS_SB (int ) ;
 int S_IFLNK ;
 int S_IRWXUGO ;
 int clear_nlink (struct inode*) ;
 int hfsplus_create_cat (int ,struct inode*,int *,struct inode*) ;
 int hfsplus_delete_cat (int ,struct inode*,int *) ;
 int hfsplus_delete_inode (struct inode*) ;
 int hfsplus_init_security (struct inode*,struct inode*,int *) ;
 int hfsplus_instantiate (struct dentry*,struct inode*,int ) ;
 struct inode* hfsplus_new_inode (int ,struct inode*,int) ;
 int iput (struct inode*) ;
 int mark_inode_dirty (struct inode*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int page_symlink (struct inode*,char const*,scalar_t__) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static int hfsplus_symlink(struct inode *dir, struct dentry *dentry,
      const char *symname)
{
 struct hfsplus_sb_info *sbi = HFSPLUS_SB(dir->i_sb);
 struct inode *inode;
 int res = -ENOMEM;

 mutex_lock(&sbi->vh_mutex);
 inode = hfsplus_new_inode(dir->i_sb, dir, S_IFLNK | S_IRWXUGO);
 if (!inode)
  goto out;

 res = page_symlink(inode, symname, strlen(symname) + 1);
 if (res)
  goto out_err;

 res = hfsplus_create_cat(inode->i_ino, dir, &dentry->d_name, inode);
 if (res)
  goto out_err;

 res = hfsplus_init_security(inode, dir, &dentry->d_name);
 if (res == -EOPNOTSUPP)
  res = 0;
 else if (res) {

  hfsplus_delete_cat(inode->i_ino, dir, &dentry->d_name);
  goto out_err;
 }

 hfsplus_instantiate(dentry, inode, inode->i_ino);
 mark_inode_dirty(inode);
 goto out;

out_err:
 clear_nlink(inode);
 hfsplus_delete_inode(inode);
 iput(inode);
out:
 mutex_unlock(&sbi->vh_mutex);
 return res;
}
