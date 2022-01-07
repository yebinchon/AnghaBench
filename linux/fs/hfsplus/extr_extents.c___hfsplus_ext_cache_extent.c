
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct inode {int i_ino; } ;
struct hfsplus_inode_info {int extent_state; scalar_t__ cached_blocks; scalar_t__ cached_start; int cached_extents; int extents_lock; } ;
struct hfs_find_data {TYPE_2__* key; } ;
struct TYPE_3__ {int start_block; } ;
struct TYPE_4__ {TYPE_1__ ext; } ;


 int HFSPLUS_EXT_DIRTY ;
 int HFSPLUS_EXT_NEW ;
 struct hfsplus_inode_info* HFSPLUS_I (struct inode*) ;
 scalar_t__ HFSPLUS_IS_RSRC (struct inode*) ;
 int HFSPLUS_TYPE_DATA ;
 int HFSPLUS_TYPE_RSRC ;
 int WARN_ON (int) ;
 int __hfsplus_ext_read_extent (struct hfs_find_data*,int ,int ,int ,int ) ;
 int __hfsplus_ext_write_extent (struct inode*,struct hfs_find_data*) ;
 scalar_t__ be32_to_cpu (int ) ;
 scalar_t__ hfsplus_ext_block_count (int ) ;
 int mutex_is_locked (int *) ;

__attribute__((used)) static inline int __hfsplus_ext_cache_extent(struct hfs_find_data *fd,
  struct inode *inode, u32 block)
{
 struct hfsplus_inode_info *hip = HFSPLUS_I(inode);
 int res;

 WARN_ON(!mutex_is_locked(&hip->extents_lock));

 if (hip->extent_state & HFSPLUS_EXT_DIRTY) {
  res = __hfsplus_ext_write_extent(inode, fd);
  if (res)
   return res;
 }

 res = __hfsplus_ext_read_extent(fd, hip->cached_extents, inode->i_ino,
     block, HFSPLUS_IS_RSRC(inode) ?
      HFSPLUS_TYPE_RSRC :
      HFSPLUS_TYPE_DATA);
 if (!res) {
  hip->cached_start = be32_to_cpu(fd->key->ext.start_block);
  hip->cached_blocks =
   hfsplus_ext_block_count(hip->cached_extents);
 } else {
  hip->cached_start = hip->cached_blocks = 0;
  hip->extent_state &= ~(HFSPLUS_EXT_DIRTY | HFSPLUS_EXT_NEW);
 }
 return res;
}
