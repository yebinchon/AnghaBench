
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct reiserfs_transaction_handle {int t_trans_id; } ;
struct item_head {int dummy; } ;
struct inode {TYPE_2__* i_sb; int i_mode; scalar_t__ i_ino; } ;
struct TYPE_8__ {scalar_t__ k_objectid; int k_dir_id; } ;
struct cpu_key {int key_length; int version; TYPE_1__ on_disk_key; } ;
typedef int __le32 ;
struct TYPE_11__ {int i_flags; } ;
struct TYPE_10__ {int k_dir_id; } ;
struct TYPE_9__ {int s_blocksize; } ;


 int BUG_ON (int) ;
 int ENOSPC ;
 int INITIALIZE_PATH (int ) ;
 TYPE_4__* INODE_PKEY (struct inode*) ;
 int ITEM_NOT_FOUND ;
 int KEY_FORMAT_3_5 ;
 int MAX_KEY_OBJECTID ;
 TYPE_6__* REISERFS_I (struct inode*) ;
 int RFALSE (int,char*,long) ;
 scalar_t__ S_ISDIR (int ) ;
 int TYPE_DIRECT ;
 int TYPE_INDIRECT ;
 int i_link_saved_truncate_mask ;
 int i_link_saved_unlink_mask ;
 int make_le_item_head (struct item_head*,struct cpu_key*,int ,int,int ,int,int) ;
 int path ;
 int pathrelse (int *) ;
 int reiserfs_error (TYPE_2__*,char*,char*,...) ;
 int reiserfs_insert_item (struct reiserfs_transaction_handle*,int *,struct cpu_key*,struct item_head*,int *,char*) ;
 int reiserfs_warning (TYPE_2__*,char*,char*,TYPE_4__*) ;
 int search_item (TYPE_2__*,struct cpu_key*,int *) ;
 int set_cpu_key_k_offset (struct cpu_key*,int) ;
 int set_cpu_key_k_type (struct cpu_key*,int ) ;

void add_save_link(struct reiserfs_transaction_handle *th,
     struct inode *inode, int truncate)
{
 INITIALIZE_PATH(path);
 int retval;
 struct cpu_key key;
 struct item_head ih;
 __le32 link;

 BUG_ON(!th->t_trans_id);


 RFALSE(truncate &&
        (REISERFS_I(inode)->i_flags & i_link_saved_truncate_mask),
        "saved link already exists for truncated inode %lx",
        (long)inode->i_ino);
 RFALSE(!truncate &&
        (REISERFS_I(inode)->i_flags & i_link_saved_unlink_mask),
        "saved link already exists for unlinked inode %lx",
        (long)inode->i_ino);


 key.version = KEY_FORMAT_3_5;
 key.on_disk_key.k_dir_id = MAX_KEY_OBJECTID;
 key.on_disk_key.k_objectid = inode->i_ino;
 if (!truncate) {

  set_cpu_key_k_offset(&key, 1 + inode->i_sb->s_blocksize);
  set_cpu_key_k_type(&key, TYPE_DIRECT);


  make_le_item_head(&ih, &key, key.version,
      1 + inode->i_sb->s_blocksize, TYPE_DIRECT,
      4 , 0xffff );
 } else {

  if (S_ISDIR(inode->i_mode))
   reiserfs_warning(inode->i_sb, "green-2102",
      "Adding a truncate savelink for "
      "a directory %k! Please report",
      INODE_PKEY(inode));
  set_cpu_key_k_offset(&key, 1);
  set_cpu_key_k_type(&key, TYPE_INDIRECT);


  make_le_item_head(&ih, &key, key.version, 1, TYPE_INDIRECT,
      4 , 0 );
 }
 key.key_length = 3;


 retval = search_item(inode->i_sb, &key, &path);
 if (retval != ITEM_NOT_FOUND) {
  if (retval != -ENOSPC)
   reiserfs_error(inode->i_sb, "vs-2100",
           "search_by_key (%K) returned %d", &key,
           retval);
  pathrelse(&path);
  return;
 }


 link = INODE_PKEY(inode)->k_dir_id;


 retval =
     reiserfs_insert_item(th, &path, &key, &ih, ((void*)0), (char *)&link);
 if (retval) {
  if (retval != -ENOSPC)
   reiserfs_error(inode->i_sb, "vs-2120",
           "insert_item returned %d", retval);
 } else {
  if (truncate)
   REISERFS_I(inode)->i_flags |=
       i_link_saved_truncate_mask;
  else
   REISERFS_I(inode)->i_flags |= i_link_saved_unlink_mask;
 }
}
