
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct ext4_ext_path {size_t p_depth; int p_ext; } ;
typedef int handle_t ;
typedef int ext4_lblk_t ;


 int EXT4_EXT_MARK_UNWRIT1 ;
 int EXT4_EXT_MARK_UNWRIT2 ;
 int EXT4_EX_NOCACHE ;
 int EXT4_GET_BLOCKS_METADATA_NOFAIL ;
 int EXT4_GET_BLOCKS_PRE_IO ;
 int ext4_ext_is_unwritten (int ) ;
 int ext4_split_extent_at (int *,struct inode*,struct ext4_ext_path**,int ,int,int) ;

__attribute__((used)) static inline int
ext4_force_split_extent_at(handle_t *handle, struct inode *inode,
      struct ext4_ext_path **ppath, ext4_lblk_t lblk,
      int nofail)
{
 struct ext4_ext_path *path = *ppath;
 int unwritten = ext4_ext_is_unwritten(path[path->p_depth].p_ext);

 return ext4_split_extent_at(handle, inode, ppath, lblk, unwritten ?
   EXT4_EXT_MARK_UNWRIT1|EXT4_EXT_MARK_UNWRIT2 : 0,
   EXT4_EX_NOCACHE | EXT4_GET_BLOCKS_PRE_IO |
   (nofail ? EXT4_GET_BLOCKS_METADATA_NOFAIL:0));
}
