
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_inode {scalar_t__ data_len; int xattr_cnt; int ui_mutex; int xattr_names; int xattr_size; } ;
struct ubifs_info {int dummy; } ;
struct ubifs_budget_req {int dirtied_ino; int mod_dent; int dirtied_ino_d; } ;
struct inode {scalar_t__ i_size; int i_ctime; } ;
struct fscrypt_name {int dummy; } ;


 int ALIGN (scalar_t__,int) ;
 scalar_t__ CALC_DENT_SIZE (scalar_t__) ;
 scalar_t__ CALC_XATTR_BYTES (scalar_t__) ;
 int current_time (struct inode*) ;
 scalar_t__ fname_len (struct fscrypt_name const*) ;
 int make_bad_inode (struct inode*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int ubifs_assert (struct ubifs_info*,int) ;
 int ubifs_budget_space (struct ubifs_info*,struct ubifs_budget_req*) ;
 struct ubifs_inode* ubifs_inode (struct inode*) ;
 int ubifs_jnl_delete_xattr (struct ubifs_info*,struct inode*,struct inode*,struct fscrypt_name const*) ;
 int ubifs_release_budget (struct ubifs_info*,struct ubifs_budget_req*) ;

__attribute__((used)) static int remove_xattr(struct ubifs_info *c, struct inode *host,
   struct inode *inode, const struct fscrypt_name *nm)
{
 int err;
 struct ubifs_inode *host_ui = ubifs_inode(host);
 struct ubifs_inode *ui = ubifs_inode(inode);
 struct ubifs_budget_req req = { .dirtied_ino = 2, .mod_dent = 1,
    .dirtied_ino_d = ALIGN(host_ui->data_len, 8) };

 ubifs_assert(c, ui->data_len == inode->i_size);

 err = ubifs_budget_space(c, &req);
 if (err)
  return err;

 mutex_lock(&host_ui->ui_mutex);
 host->i_ctime = current_time(host);
 host_ui->xattr_cnt -= 1;
 host_ui->xattr_size -= CALC_DENT_SIZE(fname_len(nm));
 host_ui->xattr_size -= CALC_XATTR_BYTES(ui->data_len);
 host_ui->xattr_names -= fname_len(nm);

 err = ubifs_jnl_delete_xattr(c, host, inode, nm);
 if (err)
  goto out_cancel;
 mutex_unlock(&host_ui->ui_mutex);

 ubifs_release_budget(c, &req);
 return 0;

out_cancel:
 host_ui->xattr_cnt += 1;
 host_ui->xattr_size += CALC_DENT_SIZE(fname_len(nm));
 host_ui->xattr_size += CALC_XATTR_BYTES(ui->data_len);
 host_ui->xattr_names += fname_len(nm);
 mutex_unlock(&host_ui->ui_mutex);
 ubifs_release_budget(c, &req);
 make_bad_inode(inode);
 return err;
}
