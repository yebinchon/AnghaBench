
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_blkbits; int i_ino; int i_sb; } ;
struct extent_status {int es_lblk; int es_len; } ;
struct ext4_map_blocks {int m_flags; int m_len; scalar_t__ m_lblk; int m_pblk; } ;
typedef int loff_t ;
typedef int handle_t ;
struct TYPE_2__ {int i_data_sem; } ;


 int BUG () ;
 int EFSCORRUPTED ;
 int EXT4_GET_BLOCKS_CONVERT_UNWRITTEN ;
 int EXT4_GET_BLOCKS_CREATE ;
 int EXT4_GET_BLOCKS_DELALLOC_RESERVE ;
 int EXT4_GET_BLOCKS_IO_SUBMIT ;
 int EXT4_GET_BLOCKS_KEEP_SIZE ;
 int EXT4_GET_BLOCKS_PRE_IO ;
 int EXT4_GET_BLOCKS_ZERO ;
 TYPE_1__* EXT4_I (struct inode*) ;
 int EXT4_INODE_EXTENTS ;
 int EXT4_MAP_FLAGS ;
 int EXT4_MAP_MAPPED ;
 int EXT4_MAP_NEW ;
 int EXT4_MAP_UNWRITTEN ;
 int EXT4_STATE_EXT_MIGRATE ;
 unsigned int EXTENT_STATUS_DELAYED ;
 unsigned int EXTENT_STATUS_UNWRITTEN ;
 unsigned int EXTENT_STATUS_WRITTEN ;
 scalar_t__ EXT_MAX_BLOCKS ;
 int INT_MAX ;
 int WARN_ON (int) ;
 int check_block_validity (struct inode*,struct ext4_map_blocks*) ;
 int down_read (int *) ;
 int down_write (int *) ;
 int ext4_clear_inode_state (struct inode*,int ) ;
 int ext4_da_update_reserve_space (struct inode*,int,int) ;
 int ext4_es_insert_extent (struct inode*,int,int,int,unsigned int) ;
 scalar_t__ ext4_es_is_delayed (struct extent_status*) ;
 scalar_t__ ext4_es_is_hole (struct extent_status*) ;
 scalar_t__ ext4_es_is_unwritten (struct extent_status*) ;
 scalar_t__ ext4_es_is_written (struct extent_status*) ;
 scalar_t__ ext4_es_lookup_extent (struct inode*,scalar_t__,int *,struct extent_status*) ;
 int ext4_es_pblock (struct extent_status*) ;
 scalar_t__ ext4_es_scan_range (struct inode*,scalar_t__ (*) (struct extent_status*),int,int) ;
 int ext4_ext_map_blocks (int *,struct inode*,struct ext4_map_blocks*,int) ;
 int ext4_ind_map_blocks (int *,struct inode*,struct ext4_map_blocks*,int) ;
 int ext4_is_quota_file (struct inode*) ;
 int ext4_issue_zeroout (struct inode*,int,int,int) ;
 int ext4_jbd2_inode_add_wait (int *,struct inode*,int,int) ;
 int ext4_jbd2_inode_add_write (int *,struct inode*,int,int) ;
 int ext4_map_blocks_es_recheck (int *,struct inode*,struct ext4_map_blocks*,struct ext4_map_blocks*,int) ;
 scalar_t__ ext4_should_order_data (struct inode*) ;
 scalar_t__ ext4_test_inode_flag (struct inode*,int ) ;
 int ext4_warning (int ,char*,int ,int,int) ;
 int ext_debug (char*,int ,int,int,unsigned long) ;
 int memcpy (struct ext4_map_blocks*,struct ext4_map_blocks*,int) ;
 scalar_t__ unlikely (int) ;
 int up_read (int *) ;
 int up_write (int *) ;

int ext4_map_blocks(handle_t *handle, struct inode *inode,
      struct ext4_map_blocks *map, int flags)
{
 struct extent_status es;
 int retval;
 int ret = 0;






 map->m_flags = 0;
 ext_debug("ext4_map_blocks(): inode %lu, flag %d, max_blocks %u,"
    "logical block %lu\n", inode->i_ino, flags, map->m_len,
    (unsigned long) map->m_lblk);




 if (unlikely(map->m_len > INT_MAX))
  map->m_len = INT_MAX;


 if (unlikely(map->m_lblk >= EXT_MAX_BLOCKS))
  return -EFSCORRUPTED;


 if (ext4_es_lookup_extent(inode, map->m_lblk, ((void*)0), &es)) {
  if (ext4_es_is_written(&es) || ext4_es_is_unwritten(&es)) {
   map->m_pblk = ext4_es_pblock(&es) +
     map->m_lblk - es.es_lblk;
   map->m_flags |= ext4_es_is_written(&es) ?
     EXT4_MAP_MAPPED : EXT4_MAP_UNWRITTEN;
   retval = es.es_len - (map->m_lblk - es.es_lblk);
   if (retval > map->m_len)
    retval = map->m_len;
   map->m_len = retval;
  } else if (ext4_es_is_delayed(&es) || ext4_es_is_hole(&es)) {
   map->m_pblk = 0;
   retval = es.es_len - (map->m_lblk - es.es_lblk);
   if (retval > map->m_len)
    retval = map->m_len;
   map->m_len = retval;
   retval = 0;
  } else {
   BUG();
  }




  goto found;
 }





 down_read(&EXT4_I(inode)->i_data_sem);
 if (ext4_test_inode_flag(inode, EXT4_INODE_EXTENTS)) {
  retval = ext4_ext_map_blocks(handle, inode, map, flags &
          EXT4_GET_BLOCKS_KEEP_SIZE);
 } else {
  retval = ext4_ind_map_blocks(handle, inode, map, flags &
          EXT4_GET_BLOCKS_KEEP_SIZE);
 }
 if (retval > 0) {
  unsigned int status;

  if (unlikely(retval != map->m_len)) {
   ext4_warning(inode->i_sb,
         "ES len assertion failed for inode "
         "%lu: retval %d != map->m_len %d",
         inode->i_ino, retval, map->m_len);
   WARN_ON(1);
  }

  status = map->m_flags & EXT4_MAP_UNWRITTEN ?
    EXTENT_STATUS_UNWRITTEN : EXTENT_STATUS_WRITTEN;
  if (!(flags & EXT4_GET_BLOCKS_DELALLOC_RESERVE) &&
      !(status & EXTENT_STATUS_WRITTEN) &&
      ext4_es_scan_range(inode, &ext4_es_is_delayed, map->m_lblk,
           map->m_lblk + map->m_len - 1))
   status |= EXTENT_STATUS_DELAYED;
  ret = ext4_es_insert_extent(inode, map->m_lblk,
         map->m_len, map->m_pblk, status);
  if (ret < 0)
   retval = ret;
 }
 up_read((&EXT4_I(inode)->i_data_sem));

found:
 if (retval > 0 && map->m_flags & EXT4_MAP_MAPPED) {
  ret = check_block_validity(inode, map);
  if (ret != 0)
   return ret;
 }


 if ((flags & EXT4_GET_BLOCKS_CREATE) == 0)
  return retval;
 if (retval > 0 && map->m_flags & EXT4_MAP_MAPPED)





  if (!(flags & EXT4_GET_BLOCKS_CONVERT_UNWRITTEN))
   return retval;





 map->m_flags &= ~EXT4_MAP_FLAGS;







 down_write(&EXT4_I(inode)->i_data_sem);





 if (ext4_test_inode_flag(inode, EXT4_INODE_EXTENTS)) {
  retval = ext4_ext_map_blocks(handle, inode, map, flags);
 } else {
  retval = ext4_ind_map_blocks(handle, inode, map, flags);

  if (retval > 0 && map->m_flags & EXT4_MAP_NEW) {





   ext4_clear_inode_state(inode, EXT4_STATE_EXT_MIGRATE);
  }







  if ((retval > 0) &&
   (flags & EXT4_GET_BLOCKS_DELALLOC_RESERVE))
   ext4_da_update_reserve_space(inode, retval, 1);
 }

 if (retval > 0) {
  unsigned int status;

  if (unlikely(retval != map->m_len)) {
   ext4_warning(inode->i_sb,
         "ES len assertion failed for inode "
         "%lu: retval %d != map->m_len %d",
         inode->i_ino, retval, map->m_len);
   WARN_ON(1);
  }
  if (flags & EXT4_GET_BLOCKS_ZERO &&
      map->m_flags & EXT4_MAP_MAPPED &&
      map->m_flags & EXT4_MAP_NEW) {
   ret = ext4_issue_zeroout(inode, map->m_lblk,
       map->m_pblk, map->m_len);
   if (ret) {
    retval = ret;
    goto out_sem;
   }
  }





  if ((flags & EXT4_GET_BLOCKS_PRE_IO) &&
      ext4_es_lookup_extent(inode, map->m_lblk, ((void*)0), &es)) {
   if (ext4_es_is_written(&es))
    goto out_sem;
  }
  status = map->m_flags & EXT4_MAP_UNWRITTEN ?
    EXTENT_STATUS_UNWRITTEN : EXTENT_STATUS_WRITTEN;
  if (!(flags & EXT4_GET_BLOCKS_DELALLOC_RESERVE) &&
      !(status & EXTENT_STATUS_WRITTEN) &&
      ext4_es_scan_range(inode, &ext4_es_is_delayed, map->m_lblk,
           map->m_lblk + map->m_len - 1))
   status |= EXTENT_STATUS_DELAYED;
  ret = ext4_es_insert_extent(inode, map->m_lblk, map->m_len,
         map->m_pblk, status);
  if (ret < 0) {
   retval = ret;
   goto out_sem;
  }
 }

out_sem:
 up_write((&EXT4_I(inode)->i_data_sem));
 if (retval > 0 && map->m_flags & EXT4_MAP_MAPPED) {
  ret = check_block_validity(inode, map);
  if (ret != 0)
   return ret;






  if (map->m_flags & EXT4_MAP_NEW &&
      !(map->m_flags & EXT4_MAP_UNWRITTEN) &&
      !(flags & EXT4_GET_BLOCKS_ZERO) &&
      !ext4_is_quota_file(inode) &&
      ext4_should_order_data(inode)) {
   loff_t start_byte =
    (loff_t)map->m_lblk << inode->i_blkbits;
   loff_t length = (loff_t)map->m_len << inode->i_blkbits;

   if (flags & EXT4_GET_BLOCKS_IO_SUBMIT)
    ret = ext4_jbd2_inode_add_wait(handle, inode,
      start_byte, length);
   else
    ret = ext4_jbd2_inode_add_write(handle, inode,
      start_byte, length);
   if (ret)
    return ret;
  }
 }
 return retval;
}
