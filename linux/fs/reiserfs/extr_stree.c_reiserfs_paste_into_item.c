
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct treepath {int dummy; } ;
struct tree_balance {int key; } ;
struct super_block {int dummy; } ;
struct reiserfs_transaction_handle {int t_super; int t_trans_id; } ;
struct inode {int i_uid; struct super_block* i_sb; } ;
struct cpu_key {int on_disk_key; } ;


 int BUG_ON (int) ;
 int CARRY_ON ;
 int EEXIST ;
 int EIO ;
 int ENOSPC ;
 int IO_ERROR ;
 int M_PASTE ;
 int NO_DISK_SPACE ;
 int POSITION_FOUND ;
 int PROC_INFO_INC (int ,int ) ;
 int REISERFS_DEBUG_CODE ;
 int REPEAT_SEARCH ;
 int check_research_for_paste (struct treepath*,struct cpu_key const*) ;
 int do_balance (struct tree_balance*,int *,char const*,int ) ;
 int dquot_alloc_space_nodirty (struct inode*,int) ;
 int dquot_free_space_nodirty (struct inode*,int) ;
 int fix_nodes (int ,struct tree_balance*,int *,char const*) ;
 scalar_t__ fs_changed (int,struct super_block*) ;
 int get_generation (struct super_block*) ;
 int init_tb_struct (struct reiserfs_transaction_handle*,struct tree_balance*,int ,struct treepath*,int) ;
 int key2type (int *) ;
 int paste_into_item_restarted ;
 int pathrelse (struct treepath*) ;
 int reiserfs_debug (struct super_block*,int ,char*,int,int ,int ) ;
 int reiserfs_warning (struct super_block*,char*,char*,struct cpu_key const*) ;
 int reiserfs_write_lock_nested (struct super_block*,int) ;
 int reiserfs_write_unlock_nested (struct super_block*) ;
 int search_for_position_by_key (int ,struct cpu_key const*,struct treepath*) ;
 int unfix_nodes (struct tree_balance*) ;

int reiserfs_paste_into_item(struct reiserfs_transaction_handle *th,

        struct treepath *search_path,

        const struct cpu_key *key,

        struct inode *inode,

        const char *body,

        int pasted_size)
{
 struct super_block *sb = inode->i_sb;
 struct tree_balance s_paste_balance;
 int retval;
 int fs_gen;
 int depth;

 BUG_ON(!th->t_trans_id);

 fs_gen = get_generation(inode->i_sb);
 depth = reiserfs_write_unlock_nested(sb);
 retval = dquot_alloc_space_nodirty(inode, pasted_size);
 reiserfs_write_lock_nested(sb, depth);
 if (retval) {
  pathrelse(search_path);
  return retval;
 }
 init_tb_struct(th, &s_paste_balance, th->t_super, search_path,
         pasted_size);





 if (fs_changed(fs_gen, inode->i_sb)) {
  goto search_again;
 }

 while ((retval =
  fix_nodes(M_PASTE, &s_paste_balance, ((void*)0),
     body)) == REPEAT_SEARCH) {
search_again:

  PROC_INFO_INC(th->t_super, paste_into_item_restarted);
  retval =
      search_for_position_by_key(th->t_super, key,
            search_path);
  if (retval == IO_ERROR) {
   retval = -EIO;
   goto error_out;
  }
  if (retval == POSITION_FOUND) {
   reiserfs_warning(inode->i_sb, "PAP-5710",
      "entry or pasted byte (%K) exists",
      key);
   retval = -EEXIST;
   goto error_out;
  }



 }





 if (retval == CARRY_ON) {
  do_balance(&s_paste_balance, ((void*)0) , body, M_PASTE);
  return 0;
 }
 retval = (retval == NO_DISK_SPACE) ? -ENOSPC : -EIO;
error_out:

 unfix_nodes(&s_paste_balance);






 depth = reiserfs_write_unlock_nested(sb);
 dquot_free_space_nodirty(inode, pasted_size);
 reiserfs_write_lock_nested(sb, depth);
 return retval;
}
