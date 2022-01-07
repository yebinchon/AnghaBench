
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct inode {int i_ino; } ;
struct hfs_find_data {int entrylength; int entryoffset; int bnode; TYPE_1__* tree; int search_key; } ;
typedef int hfs_extent_rec ;
struct TYPE_4__ {int flags; int cached_extents; int cached_start; } ;
struct TYPE_3__ {scalar_t__ depth; } ;


 int ENOENT ;
 int HFS_FK_DATA ;
 int HFS_FK_RSRC ;
 int HFS_FLG_EXT_DIRTY ;
 int HFS_FLG_EXT_NEW ;
 TYPE_2__* HFS_I (struct inode*) ;
 scalar_t__ HFS_IS_RSRC (struct inode*) ;
 int hfs_bmap_reserve (TYPE_1__*,scalar_t__) ;
 int hfs_bnode_write (int ,int ,int ,int ) ;
 int hfs_brec_find (struct hfs_find_data*) ;
 int hfs_brec_insert (struct hfs_find_data*,int ,int) ;
 int hfs_ext_build_key (int ,int ,int ,int ) ;

__attribute__((used)) static int __hfs_ext_write_extent(struct inode *inode, struct hfs_find_data *fd)
{
 int res;

 hfs_ext_build_key(fd->search_key, inode->i_ino, HFS_I(inode)->cached_start,
     HFS_IS_RSRC(inode) ? HFS_FK_RSRC : HFS_FK_DATA);
 res = hfs_brec_find(fd);
 if (HFS_I(inode)->flags & HFS_FLG_EXT_NEW) {
  if (res != -ENOENT)
   return res;

  res = hfs_bmap_reserve(fd->tree, fd->tree->depth + 1);
  if (res)
   return res;
  hfs_brec_insert(fd, HFS_I(inode)->cached_extents, sizeof(hfs_extent_rec));
  HFS_I(inode)->flags &= ~(HFS_FLG_EXT_DIRTY|HFS_FLG_EXT_NEW);
 } else {
  if (res)
   return res;
  hfs_bnode_write(fd->bnode, HFS_I(inode)->cached_extents, fd->entryoffset, fd->entrylength);
  HFS_I(inode)->flags &= ~HFS_FLG_EXT_DIRTY;
 }
 return 0;
}
