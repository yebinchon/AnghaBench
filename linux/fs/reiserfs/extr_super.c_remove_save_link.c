
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct reiserfs_transaction_handle {int dummy; } ;
struct reiserfs_key {int k_objectid; int k_dir_id; } ;
struct inode {int i_ino; TYPE_1__* i_sb; } ;
struct TYPE_6__ {int k_objectid; } ;
struct TYPE_5__ {int i_flags; } ;
struct TYPE_4__ {int s_blocksize; } ;


 TYPE_3__* INODE_PKEY (struct inode*) ;
 int JOURNAL_PER_BALANCE_CNT ;
 int KEY_FORMAT_3_5 ;
 int MAX_KEY_OBJECTID ;
 TYPE_2__* REISERFS_I (struct inode*) ;
 int TYPE_DIRECT ;
 int TYPE_INDIRECT ;
 int cpu_to_le32 (int ) ;
 int i_link_saved_truncate_mask ;
 int i_link_saved_unlink_mask ;
 int journal_begin (struct reiserfs_transaction_handle*,TYPE_1__*,int ) ;
 int journal_end (struct reiserfs_transaction_handle*) ;
 int reiserfs_delete_solid_item (struct reiserfs_transaction_handle*,int *,struct reiserfs_key*) ;
 int reiserfs_release_objectid (struct reiserfs_transaction_handle*,int ) ;
 int set_le_key_k_offset (int ,struct reiserfs_key*,int) ;
 int set_le_key_k_type (int ,struct reiserfs_key*,int ) ;

int remove_save_link(struct inode *inode, int truncate)
{
 struct reiserfs_transaction_handle th;
 struct reiserfs_key key;
 int err;


 err = journal_begin(&th, inode->i_sb, JOURNAL_PER_BALANCE_CNT);
 if (err)
  return err;


 key.k_dir_id = cpu_to_le32(MAX_KEY_OBJECTID);
 key.k_objectid = INODE_PKEY(inode)->k_objectid;
 if (!truncate) {

  set_le_key_k_offset(KEY_FORMAT_3_5, &key,
        1 + inode->i_sb->s_blocksize);
  set_le_key_k_type(KEY_FORMAT_3_5, &key, TYPE_DIRECT);
 } else {

  set_le_key_k_offset(KEY_FORMAT_3_5, &key, 1);
  set_le_key_k_type(KEY_FORMAT_3_5, &key, TYPE_INDIRECT);
 }

 if ((truncate &&
      (REISERFS_I(inode)->i_flags & i_link_saved_truncate_mask)) ||
     (!truncate &&
      (REISERFS_I(inode)->i_flags & i_link_saved_unlink_mask)))

  reiserfs_delete_solid_item(&th, ((void*)0), &key);
 if (!truncate) {
  reiserfs_release_objectid(&th, inode->i_ino);
  REISERFS_I(inode)->i_flags &= ~i_link_saved_unlink_mask;
 } else
  REISERFS_I(inode)->i_flags &= ~i_link_saved_truncate_mask;

 return journal_end(&th);
}
