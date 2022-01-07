
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ubifs_inode {int data_len; int xattr_cnt; int xattr_names; int xattr; int ui_size; int ui_mutex; int flags; int xattr_size; int data; } ;
struct ubifs_info {int dummy; } ;
struct ubifs_budget_req {int new_ino; int new_dent; int dirtied_ino; int dirtied_ino_d; int new_ino_d; } ;
struct inode {int i_flags; int i_size; int i_ctime; int * i_fop; int * i_op; TYPE_1__* i_mapping; int i_ino; } ;
struct fscrypt_name {int dummy; } ;
struct TYPE_2__ {int * a_ops; } ;


 int ALIGN (int,int) ;
 scalar_t__ CALC_DENT_SIZE (int) ;
 scalar_t__ CALC_XATTR_BYTES (int) ;
 int ENOMEM ;
 int ENOSPC ;
 int GFP_NOFS ;
 scalar_t__ IS_ERR (struct inode*) ;
 int PTR_ERR (struct inode*) ;
 int S_IFREG ;
 int S_IRWXUGO ;
 int S_NOATIME ;
 int S_NOCMTIME ;
 int S_SYNC ;
 int UBIFS_CRYPT_FL ;
 int UBIFS_XATTR_FL ;
 int UBIFS_XATTR_NAME_ENCRYPTION_CONTEXT ;
 int XATTR_LIST_MAX ;
 int current_time (struct inode*) ;
 int empty_aops ;
 int empty_fops ;
 int empty_iops ;
 int fname_len (struct fscrypt_name const*) ;
 int fname_name (struct fscrypt_name const*) ;
 int insert_inode_hash (struct inode*) ;
 int iput (struct inode*) ;
 int kmemdup (void const*,int,int ) ;
 int make_bad_inode (struct inode*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ strcmp (int ,int ) ;
 int ubifs_budget_space (struct ubifs_info*,struct ubifs_budget_req*) ;
 int ubifs_err (struct ubifs_info*,char*,int ,int,...) ;
 struct ubifs_inode* ubifs_inode (struct inode*) ;
 int ubifs_jnl_update (struct ubifs_info*,struct inode*,struct fscrypt_name const*,struct inode*,int ,int) ;
 struct inode* ubifs_new_inode (struct ubifs_info*,struct inode*,int) ;
 int ubifs_release_budget (struct ubifs_info*,struct ubifs_budget_req*) ;
 int ubifs_set_inode_flags (struct inode*) ;
 int ubifs_xattr_max_cnt (struct ubifs_info*) ;

__attribute__((used)) static int create_xattr(struct ubifs_info *c, struct inode *host,
   const struct fscrypt_name *nm, const void *value, int size)
{
 int err, names_len;
 struct inode *inode;
 struct ubifs_inode *ui, *host_ui = ubifs_inode(host);
 struct ubifs_budget_req req = { .new_ino = 1, .new_dent = 1,
    .new_ino_d = ALIGN(size, 8), .dirtied_ino = 1,
    .dirtied_ino_d = ALIGN(host_ui->data_len, 8) };

 if (host_ui->xattr_cnt >= ubifs_xattr_max_cnt(c)) {
  ubifs_err(c, "inode %lu already has too many xattrs (%d), cannot create more",
     host->i_ino, host_ui->xattr_cnt);
  return -ENOSPC;
 }






 names_len = host_ui->xattr_names + host_ui->xattr_cnt + fname_len(nm) + 1;
 if (names_len > XATTR_LIST_MAX) {
  ubifs_err(c, "cannot add one more xattr name to inode %lu, total names length would become %d, max. is %d",
     host->i_ino, names_len, XATTR_LIST_MAX);
  return -ENOSPC;
 }

 err = ubifs_budget_space(c, &req);
 if (err)
  return err;

 inode = ubifs_new_inode(c, host, S_IFREG | S_IRWXUGO);
 if (IS_ERR(inode)) {
  err = PTR_ERR(inode);
  goto out_budg;
 }


 inode->i_mapping->a_ops = &empty_aops;
 inode->i_op = &empty_iops;
 inode->i_fop = &empty_fops;

 inode->i_flags |= S_SYNC | S_NOATIME | S_NOCMTIME;
 ui = ubifs_inode(inode);
 ui->xattr = 1;
 ui->flags |= UBIFS_XATTR_FL;
 ui->data = kmemdup(value, size, GFP_NOFS);
 if (!ui->data) {
  err = -ENOMEM;
  goto out_free;
 }
 inode->i_size = ui->ui_size = size;
 ui->data_len = size;

 mutex_lock(&host_ui->ui_mutex);
 host->i_ctime = current_time(host);
 host_ui->xattr_cnt += 1;
 host_ui->xattr_size += CALC_DENT_SIZE(fname_len(nm));
 host_ui->xattr_size += CALC_XATTR_BYTES(size);
 host_ui->xattr_names += fname_len(nm);







 if (strcmp(fname_name(nm), UBIFS_XATTR_NAME_ENCRYPTION_CONTEXT) == 0)
  host_ui->flags |= UBIFS_CRYPT_FL;

 err = ubifs_jnl_update(c, host, nm, inode, 0, 1);
 if (err)
  goto out_cancel;
 ubifs_set_inode_flags(host);
 mutex_unlock(&host_ui->ui_mutex);

 ubifs_release_budget(c, &req);
 insert_inode_hash(inode);
 iput(inode);
 return 0;

out_cancel:
 host_ui->xattr_cnt -= 1;
 host_ui->xattr_size -= CALC_DENT_SIZE(fname_len(nm));
 host_ui->xattr_size -= CALC_XATTR_BYTES(size);
 host_ui->xattr_names -= fname_len(nm);
 host_ui->flags &= ~UBIFS_CRYPT_FL;
 mutex_unlock(&host_ui->ui_mutex);
out_free:
 make_bad_inode(inode);
 iput(inode);
out_budg:
 ubifs_release_budget(c, &req);
 return err;
}
