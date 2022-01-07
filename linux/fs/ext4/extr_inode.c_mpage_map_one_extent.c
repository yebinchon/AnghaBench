
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {TYPE_4__* io_end; } ;
struct ext4_map_blocks {int m_flags; scalar_t__ m_len; } ;
struct mpage_da_data {TYPE_1__ io_submit; struct ext4_map_blocks map; struct inode* inode; } ;
struct inode {int dummy; } ;
struct TYPE_8__ {int * h_rsv_handle; } ;
typedef TYPE_2__ handle_t ;
struct TYPE_9__ {int * handle; } ;


 int BH_Delay ;
 int BUG_ON (int) ;
 int EXT4_GET_BLOCKS_CREATE ;
 int EXT4_GET_BLOCKS_DELALLOC_RESERVE ;
 int EXT4_GET_BLOCKS_IO_CREATE_EXT ;
 int EXT4_GET_BLOCKS_IO_SUBMIT ;
 int EXT4_GET_BLOCKS_METADATA_NOFAIL ;
 int EXT4_MAP_UNWRITTEN ;
 scalar_t__ ext4_handle_valid (TYPE_2__*) ;
 int ext4_map_blocks (TYPE_2__*,struct inode*,struct ext4_map_blocks*,int) ;
 int ext4_set_io_unwritten_flag (struct inode*,TYPE_4__*) ;
 int ext4_should_dioread_nolock (struct inode*) ;
 int trace_ext4_da_write_pages_extent (struct inode*,struct ext4_map_blocks*) ;

__attribute__((used)) static int mpage_map_one_extent(handle_t *handle, struct mpage_da_data *mpd)
{
 struct inode *inode = mpd->inode;
 struct ext4_map_blocks *map = &mpd->map;
 int get_blocks_flags;
 int err, dioread_nolock;

 trace_ext4_da_write_pages_extent(inode, map);
 get_blocks_flags = EXT4_GET_BLOCKS_CREATE |
      EXT4_GET_BLOCKS_METADATA_NOFAIL |
      EXT4_GET_BLOCKS_IO_SUBMIT;
 dioread_nolock = ext4_should_dioread_nolock(inode);
 if (dioread_nolock)
  get_blocks_flags |= EXT4_GET_BLOCKS_IO_CREATE_EXT;
 if (map->m_flags & (1 << BH_Delay))
  get_blocks_flags |= EXT4_GET_BLOCKS_DELALLOC_RESERVE;

 err = ext4_map_blocks(handle, inode, map, get_blocks_flags);
 if (err < 0)
  return err;
 if (dioread_nolock && (map->m_flags & EXT4_MAP_UNWRITTEN)) {
  if (!mpd->io_submit.io_end->handle &&
      ext4_handle_valid(handle)) {
   mpd->io_submit.io_end->handle = handle->h_rsv_handle;
   handle->h_rsv_handle = ((void*)0);
  }
  ext4_set_io_unwritten_flag(inode, mpd->io_submit.io_end);
 }

 BUG_ON(map->m_len == 0);
 return 0;
}
