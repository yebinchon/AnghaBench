
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct inode {int * i_op; int i_mode; } ;
struct ext4_renament {TYPE_2__* dir; TYPE_1__* dentry; } ;
typedef int handle_t ;
struct TYPE_4__ {int i_sb; } ;
struct TYPE_3__ {int d_name; } ;


 int ENOSPC ;
 int EXT4_HT_DIR ;
 scalar_t__ EXT4_MAXQUOTAS_TRANS_BLOCKS (int ) ;
 scalar_t__ EXT4_XATTR_TRANS_BLOCKS ;
 scalar_t__ IS_ERR (struct inode*) ;
 int PTR_ERR (struct inode*) ;
 int S_IFCHR ;
 int WHITEOUT_DEV ;
 int WHITEOUT_MODE ;
 int * ext4_journal_current_handle () ;
 int ext4_journal_stop (int *) ;
 struct inode* ext4_new_inode_start_handle (TYPE_2__*,int,int *,int ,int *,int ,int) ;
 scalar_t__ ext4_should_retry_alloc (int ,int*) ;
 int ext4_special_inode_operations ;
 int init_special_inode (struct inode*,int ,int ) ;

__attribute__((used)) static struct inode *ext4_whiteout_for_rename(struct ext4_renament *ent,
           int credits, handle_t **h)
{
 struct inode *wh;
 handle_t *handle;
 int retries = 0;





 credits += (EXT4_MAXQUOTAS_TRANS_BLOCKS(ent->dir->i_sb) +
      EXT4_XATTR_TRANS_BLOCKS + 4);
retry:
 wh = ext4_new_inode_start_handle(ent->dir, S_IFCHR | WHITEOUT_MODE,
      &ent->dentry->d_name, 0, ((void*)0),
      EXT4_HT_DIR, credits);

 handle = ext4_journal_current_handle();
 if (IS_ERR(wh)) {
  if (handle)
   ext4_journal_stop(handle);
  if (PTR_ERR(wh) == -ENOSPC &&
      ext4_should_retry_alloc(ent->dir->i_sb, &retries))
   goto retry;
 } else {
  *h = handle;
  init_special_inode(wh, wh->i_mode, WHITEOUT_DEV);
  wh->i_op = &ext4_special_inode_operations;
 }
 return wh;
}
