
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ubifs_inode {scalar_t__ dirty; scalar_t__ ui_size; scalar_t__ xattr; } ;
struct TYPE_4__ {scalar_t__ nospace_rp; scalar_t__ nospace; } ;
struct ubifs_info {TYPE_2__ bi; } ;
struct inode {int i_ino; scalar_t__ i_size; scalar_t__ i_nlink; int i_data; int i_count; scalar_t__ i_mode; TYPE_1__* i_sb; } ;
struct TYPE_3__ {struct ubifs_info* s_fs_info; } ;


 int atomic_read (int *) ;
 int clear_inode (struct inode*) ;
 int dbg_gen (char*,int ,int) ;
 int fscrypt_put_encryption_info (struct inode*) ;
 scalar_t__ is_bad_inode (struct inode*) ;
 int smp_wmb () ;
 int truncate_inode_pages_final (int *) ;
 int ubifs_assert (struct ubifs_info*,int) ;
 int ubifs_err (struct ubifs_info*,char*,int ,int) ;
 struct ubifs_inode* ubifs_inode (struct inode*) ;
 int ubifs_jnl_delete_inode (struct ubifs_info*,struct inode*) ;
 int ubifs_release_dirty_inode_budget (struct ubifs_info*,struct ubifs_inode*) ;

__attribute__((used)) static void ubifs_evict_inode(struct inode *inode)
{
 int err;
 struct ubifs_info *c = inode->i_sb->s_fs_info;
 struct ubifs_inode *ui = ubifs_inode(inode);

 if (ui->xattr)





  goto out;

 dbg_gen("inode %lu, mode %#x", inode->i_ino, (int)inode->i_mode);
 ubifs_assert(c, !atomic_read(&inode->i_count));

 truncate_inode_pages_final(&inode->i_data);

 if (inode->i_nlink)
  goto done;

 if (is_bad_inode(inode))
  goto out;

 ui->ui_size = inode->i_size = 0;
 err = ubifs_jnl_delete_inode(c, inode);
 if (err)




  ubifs_err(c, "can't delete inode %lu, error %d",
     inode->i_ino, err);

out:
 if (ui->dirty)
  ubifs_release_dirty_inode_budget(c, ui);
 else {

  c->bi.nospace = c->bi.nospace_rp = 0;
  smp_wmb();
 }
done:
 clear_inode(inode);
 fscrypt_put_encryption_info(inode);
}
