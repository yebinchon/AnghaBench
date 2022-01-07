
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct reiserfs_transaction_handle {int dummy; } ;
struct inode {scalar_t__ i_nlink; int i_sb; int i_ctime; } ;
struct TYPE_2__ {int len; int name; } ;
struct dentry {TYPE_1__ d_name; } ;


 int EMLINK ;
 int JOURNAL_PER_BALANCE_CNT ;
 scalar_t__ REISERFS_LINK_MAX ;
 int REISERFS_QUOTA_TRANS_BLOCKS (int ) ;
 int current_time (struct inode*) ;
 struct inode* d_inode (struct dentry*) ;
 int d_instantiate (struct dentry*,struct inode*) ;
 int dquot_initialize (struct inode*) ;
 int drop_nlink (struct inode*) ;
 int ihold (struct inode*) ;
 int inc_nlink (struct inode*) ;
 int journal_begin (struct reiserfs_transaction_handle*,int ,int) ;
 int journal_end (struct reiserfs_transaction_handle*) ;
 int reiserfs_add_entry (struct reiserfs_transaction_handle*,struct inode*,int ,int ,struct inode*,int) ;
 int reiserfs_update_inode_transaction (struct inode*) ;
 int reiserfs_update_sd (struct reiserfs_transaction_handle*,struct inode*) ;
 int reiserfs_write_lock (int ) ;
 int reiserfs_write_unlock (int ) ;

__attribute__((used)) static int reiserfs_link(struct dentry *old_dentry, struct inode *dir,
    struct dentry *dentry)
{
 int retval;
 struct inode *inode = d_inode(old_dentry);
 struct reiserfs_transaction_handle th;




 int jbegin_count =
     JOURNAL_PER_BALANCE_CNT * 3 +
     2 * REISERFS_QUOTA_TRANS_BLOCKS(dir->i_sb);

 retval = dquot_initialize(dir);
 if (retval)
  return retval;

 reiserfs_write_lock(dir->i_sb);
 if (inode->i_nlink >= REISERFS_LINK_MAX) {

  reiserfs_write_unlock(dir->i_sb);
  return -EMLINK;
 }


 inc_nlink(inode);

 retval = journal_begin(&th, dir->i_sb, jbegin_count);
 if (retval) {
  drop_nlink(inode);
  reiserfs_write_unlock(dir->i_sb);
  return retval;
 }


 retval =
     reiserfs_add_entry(&th, dir, dentry->d_name.name,
          dentry->d_name.len, inode, 1 );

 reiserfs_update_inode_transaction(inode);
 reiserfs_update_inode_transaction(dir);

 if (retval) {
  int err;
  drop_nlink(inode);
  err = journal_end(&th);
  reiserfs_write_unlock(dir->i_sb);
  return err ? err : retval;
 }

 inode->i_ctime = current_time(inode);
 reiserfs_update_sd(&th, inode);

 ihold(inode);
 d_instantiate(dentry, inode);
 retval = journal_end(&th);
 reiserfs_write_unlock(dir->i_sb);
 return retval;
}
