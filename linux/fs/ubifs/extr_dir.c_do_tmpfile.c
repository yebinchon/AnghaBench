
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int umode_t ;
struct ubifs_inode {int dirty; int ui_mutex; } ;
struct ubifs_info {int dummy; } ;
struct ubifs_budget_req {int new_ino; int new_dent; int dirtied_ino; } ;
struct inode {int * i_op; int i_mode; int i_ino; TYPE_1__* i_sb; } ;
struct fscrypt_name {int dummy; } ;
struct dentry {int d_name; } ;
struct TYPE_2__ {struct ubifs_info* s_fs_info; } ;


 scalar_t__ IS_ERR (struct inode*) ;
 int PTR_ERR (struct inode*) ;
 int WHITEOUT_DEV ;
 int d_tmpfile (struct dentry*,struct inode*) ;
 int dbg_gen (char*,struct dentry*,int ,int ) ;
 int drop_nlink (struct inode*) ;
 int fscrypt_free_filename (struct fscrypt_name*) ;
 int fscrypt_setup_filename (struct inode*,int *,int ,struct fscrypt_name*) ;
 int init_special_inode (struct inode*,int ,int ) ;
 int insert_inode_hash (struct inode*) ;
 int iput (struct inode*) ;
 int make_bad_inode (struct inode*) ;
 int mark_inode_dirty (struct inode*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int ubifs_assert (struct ubifs_info*,int) ;
 int ubifs_budget_space (struct ubifs_info*,struct ubifs_budget_req*) ;
 int ubifs_err (struct ubifs_info*,char*,int) ;
 int ubifs_file_inode_operations ;
 int ubifs_init_security (struct inode*,struct inode*,int *) ;
 struct ubifs_inode* ubifs_inode (struct inode*) ;
 int ubifs_jnl_update (struct ubifs_info*,struct inode*,struct fscrypt_name*,struct inode*,int,int ) ;
 struct inode* ubifs_new_inode (struct ubifs_info*,struct inode*,int ) ;
 int ubifs_release_budget (struct ubifs_info*,struct ubifs_budget_req*) ;

__attribute__((used)) static int do_tmpfile(struct inode *dir, struct dentry *dentry,
        umode_t mode, struct inode **whiteout)
{
 struct inode *inode;
 struct ubifs_info *c = dir->i_sb->s_fs_info;
 struct ubifs_budget_req req = { .new_ino = 1, .new_dent = 1};
 struct ubifs_budget_req ino_req = { .dirtied_ino = 1 };
 struct ubifs_inode *ui, *dir_ui = ubifs_inode(dir);
 int err, instantiated = 0;
 struct fscrypt_name nm;






 dbg_gen("dent '%pd', mode %#hx in dir ino %lu",
  dentry, mode, dir->i_ino);

 err = fscrypt_setup_filename(dir, &dentry->d_name, 0, &nm);
 if (err)
  return err;

 err = ubifs_budget_space(c, &req);
 if (err) {
  fscrypt_free_filename(&nm);
  return err;
 }

 err = ubifs_budget_space(c, &ino_req);
 if (err) {
  ubifs_release_budget(c, &req);
  fscrypt_free_filename(&nm);
  return err;
 }

 inode = ubifs_new_inode(c, dir, mode);
 if (IS_ERR(inode)) {
  err = PTR_ERR(inode);
  goto out_budg;
 }
 ui = ubifs_inode(inode);

 if (whiteout) {
  init_special_inode(inode, inode->i_mode, WHITEOUT_DEV);
  ubifs_assert(c, inode->i_op == &ubifs_file_inode_operations);
 }

 err = ubifs_init_security(dir, inode, &dentry->d_name);
 if (err)
  goto out_inode;

 mutex_lock(&ui->ui_mutex);
 insert_inode_hash(inode);

 if (whiteout) {
  mark_inode_dirty(inode);
  drop_nlink(inode);
  *whiteout = inode;
 } else {
  d_tmpfile(dentry, inode);
 }
 ubifs_assert(c, ui->dirty);

 instantiated = 1;
 mutex_unlock(&ui->ui_mutex);

 mutex_lock(&dir_ui->ui_mutex);
 err = ubifs_jnl_update(c, dir, &nm, inode, 1, 0);
 if (err)
  goto out_cancel;
 mutex_unlock(&dir_ui->ui_mutex);

 ubifs_release_budget(c, &req);

 return 0;

out_cancel:
 mutex_unlock(&dir_ui->ui_mutex);
out_inode:
 make_bad_inode(inode);
 if (!instantiated)
  iput(inode);
out_budg:
 ubifs_release_budget(c, &req);
 if (!instantiated)
  ubifs_release_budget(c, &ino_req);
 fscrypt_free_filename(&nm);
 ubifs_err(c, "cannot create temporary file, error %d", err);
 return err;
}
