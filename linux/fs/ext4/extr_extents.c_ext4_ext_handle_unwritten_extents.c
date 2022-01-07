
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_ino; } ;
struct ext4_map_blocks {unsigned int m_len; void* m_pblk; scalar_t__ m_lblk; int m_flags; } ;
struct ext4_ext_path {int dummy; } ;
typedef int handle_t ;
typedef void* ext4_fsblk_t ;


 int EXT4_GET_BLOCKS_CONVERT ;
 int EXT4_GET_BLOCKS_CREATE ;
 int EXT4_GET_BLOCKS_KEEP_SIZE ;
 int EXT4_GET_BLOCKS_METADATA_NOFAIL ;
 int EXT4_GET_BLOCKS_PRE_IO ;
 int EXT4_GET_BLOCKS_UNWRIT_EXT ;
 int EXT4_GET_BLOCKS_ZERO ;
 int EXT4_MAP_MAPPED ;
 int EXT4_MAP_NEW ;
 int EXT4_MAP_UNWRITTEN ;
 int check_eofblocks_fl (int *,struct inode*,scalar_t__,struct ext4_ext_path*,unsigned int) ;
 int ext4_convert_unwritten_extents_endio (int *,struct inode*,struct ext4_map_blocks*,struct ext4_ext_path**) ;
 int ext4_ext_convert_to_initialized (int *,struct inode*,struct ext4_map_blocks*,struct ext4_ext_path**,int) ;
 int ext4_ext_show_leaf (struct inode*,struct ext4_ext_path*) ;
 int ext4_issue_zeroout (struct inode*,scalar_t__,void*,unsigned int) ;
 int ext4_split_convert_extents (int *,struct inode*,struct ext4_map_blocks*,struct ext4_ext_path**,int) ;
 int ext4_update_inode_fsync_trans (int *,struct inode*,int) ;
 int ext_debug (char*,int ,unsigned long long,unsigned int,int,unsigned int) ;
 int trace_ext4_ext_handle_unwritten_extents (struct inode*,struct ext4_map_blocks*,int,unsigned int,void*) ;

__attribute__((used)) static int
ext4_ext_handle_unwritten_extents(handle_t *handle, struct inode *inode,
   struct ext4_map_blocks *map,
   struct ext4_ext_path **ppath, int flags,
   unsigned int allocated, ext4_fsblk_t newblock)
{
 struct ext4_ext_path *path = *ppath;
 int ret = 0;
 int err = 0;

 ext_debug("ext4_ext_handle_unwritten_extents: inode %lu, logical "
    "block %llu, max_blocks %u, flags %x, allocated %u\n",
    inode->i_ino, (unsigned long long)map->m_lblk, map->m_len,
    flags, allocated);
 ext4_ext_show_leaf(inode, path);





 flags |= EXT4_GET_BLOCKS_METADATA_NOFAIL;

 trace_ext4_ext_handle_unwritten_extents(inode, map, flags,
          allocated, newblock);


 if (flags & EXT4_GET_BLOCKS_PRE_IO) {
  ret = ext4_split_convert_extents(handle, inode, map, ppath,
      flags | EXT4_GET_BLOCKS_CONVERT);
  if (ret <= 0)
   goto out;
  map->m_flags |= EXT4_MAP_UNWRITTEN;
  goto out;
 }

 if (flags & EXT4_GET_BLOCKS_CONVERT) {
  if (flags & EXT4_GET_BLOCKS_ZERO) {
   if (allocated > map->m_len)
    allocated = map->m_len;
   err = ext4_issue_zeroout(inode, map->m_lblk, newblock,
       allocated);
   if (err < 0)
    goto out2;
  }
  ret = ext4_convert_unwritten_extents_endio(handle, inode, map,
          ppath);
  if (ret >= 0) {
   ext4_update_inode_fsync_trans(handle, inode, 1);
   err = check_eofblocks_fl(handle, inode, map->m_lblk,
       path, map->m_len);
  } else
   err = ret;
  map->m_flags |= EXT4_MAP_MAPPED;
  map->m_pblk = newblock;
  if (allocated > map->m_len)
   allocated = map->m_len;
  map->m_len = allocated;
  goto out2;
 }





 if (flags & EXT4_GET_BLOCKS_UNWRIT_EXT) {
  map->m_flags |= EXT4_MAP_UNWRITTEN;
  goto map_out;
 }


 if ((flags & EXT4_GET_BLOCKS_CREATE) == 0) {







  map->m_flags |= EXT4_MAP_UNWRITTEN;
  goto out1;
 }


 ret = ext4_ext_convert_to_initialized(handle, inode, map, ppath, flags);
 if (ret >= 0)
  ext4_update_inode_fsync_trans(handle, inode, 1);
out:
 if (ret <= 0) {
  err = ret;
  goto out2;
 } else
  allocated = ret;
 map->m_flags |= EXT4_MAP_NEW;
 if (allocated > map->m_len)
  allocated = map->m_len;
 map->m_len = allocated;

map_out:
 map->m_flags |= EXT4_MAP_MAPPED;
 if ((flags & EXT4_GET_BLOCKS_KEEP_SIZE) == 0) {
  err = check_eofblocks_fl(handle, inode, map->m_lblk, path,
      map->m_len);
  if (err < 0)
   goto out2;
 }
out1:
 if (allocated > map->m_len)
  allocated = map->m_len;
 ext4_ext_show_leaf(inode, path);
 map->m_pblk = newblock;
 map->m_len = allocated;
out2:
 return err ? err : allocated;
}
