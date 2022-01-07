
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_inode {scalar_t__ del_cmtno; scalar_t__ xattr_cnt; } ;
struct ubifs_info {scalar_t__ cmt_no; int commit_sem; } ;
struct inode {scalar_t__ i_nlink; int i_ino; } ;


 int down_read (int *) ;
 int ubifs_assert (struct ubifs_info*,int) ;
 int ubifs_delete_orphan (struct ubifs_info*,int ) ;
 struct ubifs_inode* ubifs_inode (struct inode const*) ;
 int ubifs_jnl_write_inode (struct ubifs_info*,struct inode const*) ;
 int ubifs_ro_mode (struct ubifs_info*,int) ;
 int ubifs_tnc_remove_ino (struct ubifs_info*,int ) ;
 int up_read (int *) ;

int ubifs_jnl_delete_inode(struct ubifs_info *c, const struct inode *inode)
{
 int err;
 struct ubifs_inode *ui = ubifs_inode(inode);

 ubifs_assert(c, inode->i_nlink == 0);

 if (ui->xattr_cnt || ui->del_cmtno != c->cmt_no)

  return ubifs_jnl_write_inode(c, inode);

 down_read(&c->commit_sem);




 if (ui->del_cmtno != c->cmt_no) {
  up_read(&c->commit_sem);
  return ubifs_jnl_write_inode(c, inode);
 }

 err = ubifs_tnc_remove_ino(c, inode->i_ino);
 if (err)
  ubifs_ro_mode(c, err);
 else
  ubifs_delete_orphan(c, inode->i_ino);
 up_read(&c->commit_sem);
 return err;
}
