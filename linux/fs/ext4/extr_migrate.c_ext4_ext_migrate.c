
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uid_t ;
struct migrate_struct {scalar_t__ curr_block; } ;
struct inode {scalar_t__ i_blocks; int i_ino; TYPE_1__* i_sb; int i_mode; } ;
struct ext4_inode_info {scalar_t__* i_data; int i_data_sem; } ;
typedef int lb ;
typedef struct inode handle_t ;
typedef int __u32 ;
typedef scalar_t__ __le32 ;
struct TYPE_4__ {int s_blocksize; int s_root; } ;


 int EINVAL ;
 size_t EXT4_DIND_BLOCK ;
 int EXT4_HT_MIGRATE ;
 struct ext4_inode_info* EXT4_I (struct inode*) ;
 size_t EXT4_IND_BLOCK ;
 int EXT4_INODES_PER_GROUP (TYPE_1__*) ;
 int EXT4_INODE_EXTENTS ;
 int EXT4_MAXQUOTAS_TRANS_BLOCKS (TYPE_1__*) ;
 int EXT4_NDIR_BLOCKS ;
 int EXT4_STATE_EXT_MIGRATE ;
 size_t EXT4_TIND_BLOCK ;
 scalar_t__ IS_ERR (struct inode*) ;
 int PTR_ERR (struct inode*) ;
 int S_IFREG ;
 scalar_t__ S_ISLNK (int ) ;
 int clear_nlink (struct inode*) ;
 int d_inode (int ) ;
 int down_read (int *) ;
 int ext4_ext_swap_inode_data (struct inode*,struct inode*,struct inode*) ;
 int ext4_ext_tree_init (struct inode*,struct inode*) ;
 int ext4_has_feature_extents (TYPE_1__*) ;
 scalar_t__ ext4_journal_extend (struct inode*,int) ;
 int ext4_journal_restart (struct inode*,int) ;
 struct inode* ext4_journal_start (struct inode*,int ,int) ;
 int ext4_journal_stop (struct inode*) ;
 struct inode* ext4_new_inode (struct inode*,int ,int ,int *,int,int *,int ) ;
 int ext4_orphan_add (struct inode*,struct inode*) ;
 int ext4_orphan_del (int *,struct inode*) ;
 int ext4_set_inode_state (struct inode*,int ) ;
 scalar_t__ ext4_test_inode_flag (struct inode*,int ) ;
 int finish_range (struct inode*,struct inode*,struct migrate_struct*) ;
 int free_ext_block (struct inode*,struct inode*) ;
 int i_gid_read (struct inode*) ;
 int i_size_read (struct inode*) ;
 int i_size_write (struct inode*,int ) ;
 int i_uid_read (struct inode*) ;
 int iput (struct inode*) ;
 int le32_to_cpu (scalar_t__) ;
 int memset (struct migrate_struct*,int ,int) ;
 int unlock_new_inode (struct inode*) ;
 int up_read (int *) ;
 int update_dind_extent_range (struct inode*,struct inode*,int ,struct migrate_struct*) ;
 int update_extent_range (struct inode*,struct inode*,int ,struct migrate_struct*) ;
 int update_ind_extent_range (struct inode*,struct inode*,int ,struct migrate_struct*) ;
 int update_tind_extent_range (struct inode*,struct inode*,int ,struct migrate_struct*) ;

int ext4_ext_migrate(struct inode *inode)
{
 handle_t *handle;
 int retval = 0, i;
 __le32 *i_data;
 struct ext4_inode_info *ei;
 struct inode *tmp_inode = ((void*)0);
 struct migrate_struct lb;
 unsigned long max_entries;
 __u32 goal;
 uid_t owner[2];





 if (!ext4_has_feature_extents(inode->i_sb) ||
     (ext4_test_inode_flag(inode, EXT4_INODE_EXTENTS)))
  return -EINVAL;

 if (S_ISLNK(inode->i_mode) && inode->i_blocks == 0)



  return retval;






 handle = ext4_journal_start(inode, EXT4_HT_MIGRATE,
  4 + EXT4_MAXQUOTAS_TRANS_BLOCKS(inode->i_sb));

 if (IS_ERR(handle)) {
  retval = PTR_ERR(handle);
  return retval;
 }
 goal = (((inode->i_ino - 1) / EXT4_INODES_PER_GROUP(inode->i_sb)) *
  EXT4_INODES_PER_GROUP(inode->i_sb)) + 1;
 owner[0] = i_uid_read(inode);
 owner[1] = i_gid_read(inode);
 tmp_inode = ext4_new_inode(handle, d_inode(inode->i_sb->s_root),
       S_IFREG, ((void*)0), goal, owner, 0);
 if (IS_ERR(tmp_inode)) {
  retval = PTR_ERR(tmp_inode);
  ext4_journal_stop(handle);
  return retval;
 }
 i_size_write(tmp_inode, i_size_read(inode));




 clear_nlink(tmp_inode);

 ext4_ext_tree_init(handle, tmp_inode);
 ext4_orphan_add(handle, tmp_inode);
 ext4_journal_stop(handle);
 down_read(&EXT4_I(inode)->i_data_sem);
 ext4_set_inode_state(inode, EXT4_STATE_EXT_MIGRATE);
 up_read((&EXT4_I(inode)->i_data_sem));

 handle = ext4_journal_start(inode, EXT4_HT_MIGRATE, 1);
 if (IS_ERR(handle)) {





  ext4_orphan_del(((void*)0), tmp_inode);
  retval = PTR_ERR(handle);
  goto out;
 }

 ei = EXT4_I(inode);
 i_data = ei->i_data;
 memset(&lb, 0, sizeof(lb));


 max_entries = inode->i_sb->s_blocksize >> 2;
 for (i = 0; i < EXT4_NDIR_BLOCKS; i++) {
  if (i_data[i]) {
   retval = update_extent_range(handle, tmp_inode,
      le32_to_cpu(i_data[i]), &lb);
   if (retval)
    goto err_out;
  } else
   lb.curr_block++;
 }
 if (i_data[EXT4_IND_BLOCK]) {
  retval = update_ind_extent_range(handle, tmp_inode,
    le32_to_cpu(i_data[EXT4_IND_BLOCK]), &lb);
  if (retval)
   goto err_out;
 } else
  lb.curr_block += max_entries;
 if (i_data[EXT4_DIND_BLOCK]) {
  retval = update_dind_extent_range(handle, tmp_inode,
    le32_to_cpu(i_data[EXT4_DIND_BLOCK]), &lb);
  if (retval)
   goto err_out;
 } else
  lb.curr_block += max_entries * max_entries;
 if (i_data[EXT4_TIND_BLOCK]) {
  retval = update_tind_extent_range(handle, tmp_inode,
    le32_to_cpu(i_data[EXT4_TIND_BLOCK]), &lb);
  if (retval)
   goto err_out;
 }



 retval = finish_range(handle, tmp_inode, &lb);
err_out:
 if (retval)




  free_ext_block(handle, tmp_inode);
 else {
  retval = ext4_ext_swap_inode_data(handle, inode, tmp_inode);
  if (retval)




   free_ext_block(handle, tmp_inode);
 }


 if (ext4_journal_extend(handle, 1) != 0)
  ext4_journal_restart(handle, 1);




 i_size_write(tmp_inode, 0);
 tmp_inode->i_blocks = 0;


 ext4_ext_tree_init(handle, tmp_inode);
 ext4_journal_stop(handle);
out:
 unlock_new_inode(tmp_inode);
 iput(tmp_inode);

 return retval;
}
