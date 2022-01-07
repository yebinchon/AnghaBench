
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_inode {scalar_t__ ui_size; scalar_t__ synced_i_size; } ;
struct ubifs_info {int size_tree; scalar_t__ ro_mount; int vfs_sb; } ;
struct size_entry {scalar_t__ d_size; int rb; struct inode* inode; scalar_t__ inum; } ;
struct inode {scalar_t__ i_size; } ;


 scalar_t__ IS_ERR (struct inode*) ;
 int PTR_ERR (struct inode*) ;
 int dbg_rcvry (char*,unsigned long,scalar_t__,scalar_t__) ;
 int iput (struct inode*) ;
 int kfree (struct size_entry*) ;
 int rb_erase (int *,int *) ;
 int ubifs_assert (struct ubifs_info*,int) ;
 struct inode* ubifs_iget (int ,scalar_t__) ;
 struct ubifs_inode* ubifs_inode (struct inode*) ;
 int ubifs_jnl_write_inode (struct ubifs_info*,struct inode*) ;

__attribute__((used)) static int inode_fix_size(struct ubifs_info *c, struct size_entry *e)
{
 struct inode *inode;
 struct ubifs_inode *ui;
 int err;

 if (c->ro_mount)
  ubifs_assert(c, !e->inode);

 if (e->inode) {

  inode = e->inode;
 } else {
  inode = ubifs_iget(c->vfs_sb, e->inum);
  if (IS_ERR(inode))
   return PTR_ERR(inode);

  if (inode->i_size >= e->d_size) {




   iput(inode);
   return 0;
  }

  dbg_rcvry("ino %lu size %lld -> %lld",
     (unsigned long)e->inum,
     inode->i_size, e->d_size);

  ui = ubifs_inode(inode);

  inode->i_size = e->d_size;
  ui->ui_size = e->d_size;
  ui->synced_i_size = e->d_size;

  e->inode = inode;
 }






 if (c->ro_mount)
  return 0;

 err = ubifs_jnl_write_inode(c, inode);

 iput(inode);

 if (err)
  return err;

 rb_erase(&e->rb, &c->size_tree);
 kfree(e);

 return 0;
}
