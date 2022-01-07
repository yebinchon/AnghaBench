
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_ino; } ;
struct hfsplus_inode_info {int extent_state; int flags; int cached_extents; int cached_start; int extents_lock; } ;
struct hfs_find_data {int entrylength; int entryoffset; int bnode; TYPE_1__* tree; int search_key; } ;
typedef int hfsplus_extent_rec ;
struct TYPE_2__ {scalar_t__ depth; } ;


 int ENOENT ;
 int HFSPLUS_EXT_DIRTY ;
 int HFSPLUS_EXT_NEW ;
 struct hfsplus_inode_info* HFSPLUS_I (struct inode*) ;
 scalar_t__ HFSPLUS_IS_RSRC (struct inode*) ;
 int HFSPLUS_I_EXT_DIRTY ;
 int HFSPLUS_TYPE_DATA ;
 int HFSPLUS_TYPE_RSRC ;
 int WARN_ON (int) ;
 int hfs_bmap_reserve (TYPE_1__*,scalar_t__) ;
 int hfs_bnode_write (int ,int ,int ,int ) ;
 int hfs_brec_find (struct hfs_find_data*,int ) ;
 int hfs_brec_insert (struct hfs_find_data*,int ,int) ;
 int hfs_find_rec_by_key ;
 int hfsplus_ext_build_key (int ,int ,int ,int ) ;
 int mutex_is_locked (int *) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static int __hfsplus_ext_write_extent(struct inode *inode,
  struct hfs_find_data *fd)
{
 struct hfsplus_inode_info *hip = HFSPLUS_I(inode);
 int res;

 WARN_ON(!mutex_is_locked(&hip->extents_lock));

 hfsplus_ext_build_key(fd->search_key, inode->i_ino, hip->cached_start,
         HFSPLUS_IS_RSRC(inode) ?
    HFSPLUS_TYPE_RSRC : HFSPLUS_TYPE_DATA);

 res = hfs_brec_find(fd, hfs_find_rec_by_key);
 if (hip->extent_state & HFSPLUS_EXT_NEW) {
  if (res != -ENOENT)
   return res;

  res = hfs_bmap_reserve(fd->tree, fd->tree->depth + 1);
  if (res)
   return res;
  hfs_brec_insert(fd, hip->cached_extents,
    sizeof(hfsplus_extent_rec));
  hip->extent_state &= ~(HFSPLUS_EXT_DIRTY | HFSPLUS_EXT_NEW);
 } else {
  if (res)
   return res;
  hfs_bnode_write(fd->bnode, hip->cached_extents,
    fd->entryoffset, fd->entrylength);
  hip->extent_state &= ~HFSPLUS_EXT_DIRTY;
 }







 set_bit(HFSPLUS_I_EXT_DIRTY, &hip->flags);

 return 0;
}
