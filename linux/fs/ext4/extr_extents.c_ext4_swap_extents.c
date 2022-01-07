
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct ext4_extent {void* ee_len; int ee_block; } ;
struct ext4_ext_path {size_t p_depth; struct ext4_extent* p_ext; } ;
typedef int handle_t ;
typedef scalar_t__ ext4_lblk_t ;
struct TYPE_2__ {int i_data_sem; } ;


 int BUG_ON (int) ;
 int EXT4_EX_NOCACHE ;
 TYPE_1__* EXT4_I (struct inode*) ;
 scalar_t__ EXT_MAX_BLOCKS ;
 scalar_t__ IS_ERR (struct ext4_ext_path*) ;
 int PTR_ERR (struct ext4_ext_path*) ;
 void* cpu_to_le16 (int) ;
 int ext4_es_remove_extent (struct inode*,scalar_t__,scalar_t__) ;
 int ext4_ext_dirty (int *,struct inode*,struct ext4_ext_path*) ;
 int ext4_ext_drop_refs (struct ext4_ext_path*) ;
 int ext4_ext_get_access (int *,struct inode*,struct ext4_ext_path*) ;
 int ext4_ext_get_actual_len (struct ext4_extent*) ;
 scalar_t__ ext4_ext_is_unwritten (struct ext4_extent*) ;
 int ext4_ext_mark_unwritten (struct ext4_extent*) ;
 scalar_t__ ext4_ext_next_allocated_block (struct ext4_ext_path*) ;
 int ext4_ext_pblock (struct ext4_extent*) ;
 int ext4_ext_store_pblock (struct ext4_extent*,int ) ;
 int ext4_ext_try_to_merge (int *,struct inode*,struct ext4_ext_path*,struct ext4_extent*) ;
 struct ext4_ext_path* ext4_find_extent (struct inode*,scalar_t__,int *,int ) ;
 int ext4_force_split_extent_at (int *,struct inode*,struct ext4_ext_path**,scalar_t__,int ) ;
 int in_range (scalar_t__,scalar_t__,int) ;
 int inode_is_locked (struct inode*) ;
 int kfree (struct ext4_ext_path*) ;
 scalar_t__ le32_to_cpu (int ) ;
 int rwsem_is_locked (int *) ;
 scalar_t__ unlikely (int) ;

int
ext4_swap_extents(handle_t *handle, struct inode *inode1,
    struct inode *inode2, ext4_lblk_t lblk1, ext4_lblk_t lblk2,
    ext4_lblk_t count, int unwritten, int *erp)
{
 struct ext4_ext_path *path1 = ((void*)0);
 struct ext4_ext_path *path2 = ((void*)0);
 int replaced_count = 0;

 BUG_ON(!rwsem_is_locked(&EXT4_I(inode1)->i_data_sem));
 BUG_ON(!rwsem_is_locked(&EXT4_I(inode2)->i_data_sem));
 BUG_ON(!inode_is_locked(inode1));
 BUG_ON(!inode_is_locked(inode2));

 *erp = ext4_es_remove_extent(inode1, lblk1, count);
 if (unlikely(*erp))
  return 0;
 *erp = ext4_es_remove_extent(inode2, lblk2, count);
 if (unlikely(*erp))
  return 0;

 while (count) {
  struct ext4_extent *ex1, *ex2, tmp_ex;
  ext4_lblk_t e1_blk, e2_blk;
  int e1_len, e2_len, len;
  int split = 0;

  path1 = ext4_find_extent(inode1, lblk1, ((void*)0), EXT4_EX_NOCACHE);
  if (IS_ERR(path1)) {
   *erp = PTR_ERR(path1);
   path1 = ((void*)0);
  finish:
   count = 0;
   goto repeat;
  }
  path2 = ext4_find_extent(inode2, lblk2, ((void*)0), EXT4_EX_NOCACHE);
  if (IS_ERR(path2)) {
   *erp = PTR_ERR(path2);
   path2 = ((void*)0);
   goto finish;
  }
  ex1 = path1[path1->p_depth].p_ext;
  ex2 = path2[path2->p_depth].p_ext;

  if (unlikely(!ex2 || !ex1))
   goto finish;

  e1_blk = le32_to_cpu(ex1->ee_block);
  e2_blk = le32_to_cpu(ex2->ee_block);
  e1_len = ext4_ext_get_actual_len(ex1);
  e2_len = ext4_ext_get_actual_len(ex2);


  if (!in_range(lblk1, e1_blk, e1_len) ||
      !in_range(lblk2, e2_blk, e2_len)) {
   ext4_lblk_t next1, next2;


   next1 = ext4_ext_next_allocated_block(path1);
   next2 = ext4_ext_next_allocated_block(path2);

   if (e1_blk > lblk1)
    next1 = e1_blk;
   if (e2_blk > lblk2)
    next2 = e2_blk;

   if (next1 == EXT_MAX_BLOCKS || next2 == EXT_MAX_BLOCKS)
    goto finish;

   len = next1 - lblk1;
   if (len < next2 - lblk2)
    len = next2 - lblk2;
   if (len > count)
    len = count;
   lblk1 += len;
   lblk2 += len;
   count -= len;
   goto repeat;
  }


  if (e1_blk < lblk1) {
   split = 1;
   *erp = ext4_force_split_extent_at(handle, inode1,
      &path1, lblk1, 0);
   if (unlikely(*erp))
    goto finish;
  }
  if (e2_blk < lblk2) {
   split = 1;
   *erp = ext4_force_split_extent_at(handle, inode2,
      &path2, lblk2, 0);
   if (unlikely(*erp))
    goto finish;
  }


  if (split)
   goto repeat;


  len = count;
  if (len > e1_blk + e1_len - lblk1)
   len = e1_blk + e1_len - lblk1;
  if (len > e2_blk + e2_len - lblk2)
   len = e2_blk + e2_len - lblk2;

  if (len != e1_len) {
   split = 1;
   *erp = ext4_force_split_extent_at(handle, inode1,
      &path1, lblk1 + len, 0);
   if (unlikely(*erp))
    goto finish;
  }
  if (len != e2_len) {
   split = 1;
   *erp = ext4_force_split_extent_at(handle, inode2,
      &path2, lblk2 + len, 0);
   if (*erp)
    goto finish;
  }


  if (split)
   goto repeat;

  BUG_ON(e2_len != e1_len);
  *erp = ext4_ext_get_access(handle, inode1, path1 + path1->p_depth);
  if (unlikely(*erp))
   goto finish;
  *erp = ext4_ext_get_access(handle, inode2, path2 + path2->p_depth);
  if (unlikely(*erp))
   goto finish;


  tmp_ex = *ex1;
  ext4_ext_store_pblock(ex1, ext4_ext_pblock(ex2));
  ext4_ext_store_pblock(ex2, ext4_ext_pblock(&tmp_ex));
  ex1->ee_len = cpu_to_le16(e2_len);
  ex2->ee_len = cpu_to_le16(e1_len);
  if (unwritten)
   ext4_ext_mark_unwritten(ex2);
  if (ext4_ext_is_unwritten(&tmp_ex))
   ext4_ext_mark_unwritten(ex1);

  ext4_ext_try_to_merge(handle, inode2, path2, ex2);
  ext4_ext_try_to_merge(handle, inode1, path1, ex1);
  *erp = ext4_ext_dirty(handle, inode2, path2 +
          path2->p_depth);
  if (unlikely(*erp))
   goto finish;
  *erp = ext4_ext_dirty(handle, inode1, path1 +
          path1->p_depth);






  if (unlikely(*erp))
   goto finish;
  lblk1 += len;
  lblk2 += len;
  replaced_count += len;
  count -= len;

 repeat:
  ext4_ext_drop_refs(path1);
  kfree(path1);
  ext4_ext_drop_refs(path2);
  kfree(path2);
  path1 = path2 = ((void*)0);
 }
 return replaced_count;
}
