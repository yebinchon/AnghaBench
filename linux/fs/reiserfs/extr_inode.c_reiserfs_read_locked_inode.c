
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct reiserfs_iget_args {unsigned long dirid; } ;
struct inode {scalar_t__ i_nlink; int i_sb; int i_ino; } ;
struct TYPE_3__ {unsigned long k_dir_id; scalar_t__ k_type; scalar_t__ k_offset; int k_objectid; } ;
struct cpu_key {TYPE_1__ on_disk_key; int version; } ;
struct TYPE_4__ {int s_is_unlinked_ok; } ;


 int INITIALIZE_PATH (int ) ;
 int IO_ERROR ;
 int ITEM_FOUND ;
 int KEY_FORMAT_3_5 ;
 TYPE_2__* REISERFS_SB (int ) ;
 scalar_t__ STAT_DATA_V1 ;
 int cache_no_acl (struct inode*) ;
 int clear_nlink (struct inode*) ;
 scalar_t__ get_inode_sd_version (struct inode*) ;
 int init_inode (struct inode*,int *) ;
 int path_to_sd ;
 int pathrelse (int *) ;
 int reiserfs_check_path (int *) ;
 int reiserfs_error (int ,char*,char*,struct cpu_key*) ;
 int reiserfs_make_bad_inode (struct inode*) ;
 int reiserfs_warning (int ,char*,char*,struct cpu_key*) ;
 int search_item (int ,struct cpu_key*,int *) ;

void reiserfs_read_locked_inode(struct inode *inode,
    struct reiserfs_iget_args *args)
{
 INITIALIZE_PATH(path_to_sd);
 struct cpu_key key;
 unsigned long dirino;
 int retval;

 dirino = args->dirid;





 key.version = KEY_FORMAT_3_5;
 key.on_disk_key.k_dir_id = dirino;
 key.on_disk_key.k_objectid = inode->i_ino;
 key.on_disk_key.k_offset = 0;
 key.on_disk_key.k_type = 0;


 retval = search_item(inode->i_sb, &key, &path_to_sd);
 if (retval == IO_ERROR) {
  reiserfs_error(inode->i_sb, "vs-13070",
          "i/o failure occurred trying to find "
          "stat data of %K", &key);
  reiserfs_make_bad_inode(inode);
  return;
 }


 if (retval != ITEM_FOUND) {
  pathrelse(&path_to_sd);
  reiserfs_make_bad_inode(inode);
  clear_nlink(inode);
  return;
 }

 init_inode(inode, &path_to_sd);
 if ((inode->i_nlink == 0) &&
     !REISERFS_SB(inode->i_sb)->s_is_unlinked_ok) {
  reiserfs_warning(inode->i_sb, "vs-13075",
     "dead inode read from disk %K. "
     "This is likely to be race with knfsd. Ignore",
     &key);
  reiserfs_make_bad_inode(inode);
 }


 reiserfs_check_path(&path_to_sd);




 if (get_inode_sd_version(inode) == STAT_DATA_V1)
  cache_no_acl(inode);
}
