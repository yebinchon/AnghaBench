
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int umode_t ;
struct reiserfs_transaction_handle {int dummy; } ;
struct reiserfs_security_handle {int dummy; } ;
struct inode {int i_sb; TYPE_1__* i_mapping; int * i_fop; int * i_op; } ;
struct TYPE_4__ {int len; int name; } ;
struct dentry {TYPE_2__ d_name; } ;
struct TYPE_3__ {int * a_ops; } ;


 int ENOMEM ;
 int JOURNAL_PER_BALANCE_CNT ;
 int REISERFS_QUOTA_INIT_BLOCKS (int ) ;
 int REISERFS_QUOTA_TRANS_BLOCKS (int ) ;
 int d_instantiate_new (struct dentry*,struct inode*) ;
 int dquot_initialize (struct inode*) ;
 int drop_new_inode (struct inode*) ;
 int drop_nlink (struct inode*) ;
 int iput (struct inode*) ;
 int journal_begin (struct reiserfs_transaction_handle*,int ,int) ;
 int journal_end (struct reiserfs_transaction_handle*) ;
 struct inode* new_inode (int ) ;
 int new_inode_init (struct inode*,struct inode*,int ) ;
 int reiserfs_add_entry (struct reiserfs_transaction_handle*,struct inode*,int ,int ,struct inode*,int) ;
 int reiserfs_address_space_operations ;
 scalar_t__ reiserfs_cache_default_acl (struct inode*) ;
 int reiserfs_file_inode_operations ;
 int reiserfs_file_operations ;
 int reiserfs_new_inode (struct reiserfs_transaction_handle*,struct inode*,int ,int *,int ,struct dentry*,struct inode*,struct reiserfs_security_handle*) ;
 int reiserfs_security_init (struct inode*,struct inode*,TYPE_2__*,struct reiserfs_security_handle*) ;
 int reiserfs_update_inode_transaction (struct inode*) ;
 int reiserfs_update_sd (struct reiserfs_transaction_handle*,struct inode*) ;
 int reiserfs_write_lock (int ) ;
 int reiserfs_write_unlock (int ) ;
 int unlock_new_inode (struct inode*) ;

__attribute__((used)) static int reiserfs_create(struct inode *dir, struct dentry *dentry, umode_t mode,
      bool excl)
{
 int retval;
 struct inode *inode;




 int jbegin_count =
     JOURNAL_PER_BALANCE_CNT * 2 +
     2 * (REISERFS_QUOTA_INIT_BLOCKS(dir->i_sb) +
   REISERFS_QUOTA_TRANS_BLOCKS(dir->i_sb));
 struct reiserfs_transaction_handle th;
 struct reiserfs_security_handle security;

 retval = dquot_initialize(dir);
 if (retval)
  return retval;

 if (!(inode = new_inode(dir->i_sb))) {
  return -ENOMEM;
 }
 retval = new_inode_init(inode, dir, mode);
 if (retval) {
  drop_new_inode(inode);
  return retval;
 }

 jbegin_count += reiserfs_cache_default_acl(dir);
 retval = reiserfs_security_init(dir, inode, &dentry->d_name, &security);
 if (retval < 0) {
  drop_new_inode(inode);
  return retval;
 }
 jbegin_count += retval;
 reiserfs_write_lock(dir->i_sb);

 retval = journal_begin(&th, dir->i_sb, jbegin_count);
 if (retval) {
  drop_new_inode(inode);
  goto out_failed;
 }

 retval =
     reiserfs_new_inode(&th, dir, mode, ((void*)0), 0 , dentry,
          inode, &security);
 if (retval)
  goto out_failed;

 inode->i_op = &reiserfs_file_inode_operations;
 inode->i_fop = &reiserfs_file_operations;
 inode->i_mapping->a_ops = &reiserfs_address_space_operations;

 retval =
     reiserfs_add_entry(&th, dir, dentry->d_name.name,
          dentry->d_name.len, inode, 1 );
 if (retval) {
  int err;
  drop_nlink(inode);
  reiserfs_update_sd(&th, inode);
  err = journal_end(&th);
  if (err)
   retval = err;
  unlock_new_inode(inode);
  iput(inode);
  goto out_failed;
 }
 reiserfs_update_inode_transaction(inode);
 reiserfs_update_inode_transaction(dir);

 d_instantiate_new(dentry, inode);
 retval = journal_end(&th);

out_failed:
 reiserfs_write_unlock(dir->i_sb);
 return retval;
}
