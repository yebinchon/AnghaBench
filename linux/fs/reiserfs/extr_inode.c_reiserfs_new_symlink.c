
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct treepath {int dummy; } ;
struct super_block {int dummy; } ;
struct reiserfs_transaction_handle {int t_trans_id; struct super_block* t_super; } ;
struct TYPE_2__ {int k_objectid; int k_dir_id; } ;
struct item_head {TYPE_1__ ih_key; } ;
struct inode {int dummy; } ;
struct cpu_key {int dummy; } ;


 int BUG_ON (int) ;
 int EEXIST ;
 int EIO ;
 int IO_ERROR ;
 int ITEM_FOUND ;
 int KEY_FORMAT_3_5 ;
 int TYPE_DIRECT ;
 int _make_cpu_key (struct cpu_key*,int ,int ,int ,int,int ,int) ;
 int le32_to_cpu (int ) ;
 int make_le_item_head (struct item_head*,int *,int ,int,int ,int,int ) ;
 int pathrelse (struct treepath*) ;
 int reiserfs_error (struct super_block*,char*,char*) ;
 int reiserfs_insert_item (struct reiserfs_transaction_handle*,struct treepath*,struct cpu_key*,struct item_head*,struct inode*,char const*) ;
 int reiserfs_warning (struct super_block*,char*,char*,TYPE_1__*) ;
 int search_item (struct super_block*,struct cpu_key*,struct treepath*) ;

__attribute__((used)) static int reiserfs_new_symlink(struct reiserfs_transaction_handle *th,
    struct inode *inode,
    struct item_head *ih,
    struct treepath *path, const char *symname,
    int item_len)
{
 struct super_block *sb = th->t_super;
 struct cpu_key key;
 int retval;

 BUG_ON(!th->t_trans_id);

 _make_cpu_key(&key, KEY_FORMAT_3_5,
        le32_to_cpu(ih->ih_key.k_dir_id),
        le32_to_cpu(ih->ih_key.k_objectid),
        1, TYPE_DIRECT, 3 );

 make_le_item_head(ih, ((void*)0), KEY_FORMAT_3_5, 1, TYPE_DIRECT, item_len,
     0 );


 retval = search_item(sb, &key, path);
 if (retval == IO_ERROR) {
  reiserfs_error(sb, "vs-13080",
          "i/o failure occurred creating new symlink");
  return -EIO;
 }
 if (retval == ITEM_FOUND) {
  pathrelse(path);
  reiserfs_warning(sb, "vs-13080",
     "object with this key exists (%k)",
     &(ih->ih_key));
  return -EEXIST;
 }


 return reiserfs_insert_item(th, path, &key, ih, inode, symname);
}
