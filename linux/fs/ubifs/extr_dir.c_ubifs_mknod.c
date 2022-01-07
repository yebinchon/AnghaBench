
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union ubifs_dev_desc {int dummy; } ubifs_dev_desc ;
typedef int umode_t ;
struct ubifs_inode {int ui_size; int data_len; int ui_mutex; union ubifs_dev_desc* data; } ;
struct ubifs_info {int dummy; } ;
struct ubifs_budget_req {int new_ino; int new_dent; int dirtied_ino; int new_ino_d; } ;
struct inode {int i_size; int i_ctime; int i_mtime; int i_mode; int i_ino; TYPE_1__* i_sb; } ;
struct fscrypt_name {int dummy; } ;
struct dentry {int d_name; } ;
typedef int dev_t ;
struct TYPE_2__ {struct ubifs_info* s_fs_info; } ;


 int ALIGN (int,int) ;
 int CALC_DENT_SIZE (int ) ;
 int ENOMEM ;
 int GFP_NOFS ;
 scalar_t__ IS_ERR (struct inode*) ;
 int PTR_ERR (struct inode*) ;
 scalar_t__ S_ISBLK (int ) ;
 scalar_t__ S_ISCHR (int ) ;
 int d_instantiate (struct dentry*,struct inode*) ;
 int dbg_gen (char*,struct dentry*,int ) ;
 int fname_len (struct fscrypt_name*) ;
 int fscrypt_free_filename (struct fscrypt_name*) ;
 int fscrypt_setup_filename (struct inode*,int *,int ,struct fscrypt_name*) ;
 int init_special_inode (struct inode*,int ,int ) ;
 int insert_inode_hash (struct inode*) ;
 int iput (struct inode*) ;
 int kfree (union ubifs_dev_desc*) ;
 union ubifs_dev_desc* kmalloc (int,int ) ;
 int make_bad_inode (struct inode*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int ubifs_budget_space (struct ubifs_info*,struct ubifs_budget_req*) ;
 int ubifs_encode_dev (union ubifs_dev_desc*,int ) ;
 int ubifs_init_security (struct inode*,struct inode*,int *) ;
 struct ubifs_inode* ubifs_inode (struct inode*) ;
 int ubifs_jnl_update (struct ubifs_info*,struct inode*,struct fscrypt_name*,struct inode*,int ,int ) ;
 struct inode* ubifs_new_inode (struct ubifs_info*,struct inode*,int ) ;
 int ubifs_release_budget (struct ubifs_info*,struct ubifs_budget_req*) ;

__attribute__((used)) static int ubifs_mknod(struct inode *dir, struct dentry *dentry,
         umode_t mode, dev_t rdev)
{
 struct inode *inode;
 struct ubifs_inode *ui;
 struct ubifs_inode *dir_ui = ubifs_inode(dir);
 struct ubifs_info *c = dir->i_sb->s_fs_info;
 union ubifs_dev_desc *dev = ((void*)0);
 int sz_change;
 int err, devlen = 0;
 struct ubifs_budget_req req = { .new_ino = 1, .new_dent = 1,
     .dirtied_ino = 1 };
 struct fscrypt_name nm;






 dbg_gen("dent '%pd' in dir ino %lu", dentry, dir->i_ino);

 if (S_ISBLK(mode) || S_ISCHR(mode)) {
  dev = kmalloc(sizeof(union ubifs_dev_desc), GFP_NOFS);
  if (!dev)
   return -ENOMEM;
  devlen = ubifs_encode_dev(dev, rdev);
 }

 req.new_ino_d = ALIGN(devlen, 8);
 err = ubifs_budget_space(c, &req);
 if (err) {
  kfree(dev);
  return err;
 }

 err = fscrypt_setup_filename(dir, &dentry->d_name, 0, &nm);
 if (err) {
  kfree(dev);
  goto out_budg;
 }

 sz_change = CALC_DENT_SIZE(fname_len(&nm));

 inode = ubifs_new_inode(c, dir, mode);
 if (IS_ERR(inode)) {
  kfree(dev);
  err = PTR_ERR(inode);
  goto out_fname;
 }

 init_special_inode(inode, inode->i_mode, rdev);
 inode->i_size = ubifs_inode(inode)->ui_size = devlen;
 ui = ubifs_inode(inode);
 ui->data = dev;
 ui->data_len = devlen;

 err = ubifs_init_security(dir, inode, &dentry->d_name);
 if (err)
  goto out_inode;

 mutex_lock(&dir_ui->ui_mutex);
 dir->i_size += sz_change;
 dir_ui->ui_size = dir->i_size;
 dir->i_mtime = dir->i_ctime = inode->i_ctime;
 err = ubifs_jnl_update(c, dir, &nm, inode, 0, 0);
 if (err)
  goto out_cancel;
 mutex_unlock(&dir_ui->ui_mutex);

 ubifs_release_budget(c, &req);
 insert_inode_hash(inode);
 d_instantiate(dentry, inode);
 fscrypt_free_filename(&nm);
 return 0;

out_cancel:
 dir->i_size -= sz_change;
 dir_ui->ui_size = dir->i_size;
 mutex_unlock(&dir_ui->ui_mutex);
out_inode:
 make_bad_inode(inode);
 iput(inode);
out_fname:
 fscrypt_free_filename(&nm);
out_budg:
 ubifs_release_budget(c, &req);
 return err;
}
