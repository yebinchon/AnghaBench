
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct ext4_extent {int ee_block; } ;
struct ext4_ext_path {int p_depth; struct ext4_extent* p_ext; int p_hdr; } ;
typedef int handle_t ;
typedef scalar_t__ ext4_lblk_t ;
typedef enum SHIFT_DIRECTION { ____Placeholder_SHIFT_DIRECTION } SHIFT_DIRECTION ;


 int EFSCORRUPTED ;
 int EINVAL ;
 int EXT4_ERROR_INODE (struct inode*,char*,unsigned long) ;
 int EXT4_EX_NOCACHE ;
 struct ext4_extent* EXT_FIRST_EXTENT (int ) ;
 struct ext4_extent* EXT_LAST_EXTENT (int ) ;
 scalar_t__ EXT_MAX_BLOCKS ;
 scalar_t__ IS_ERR (struct ext4_ext_path*) ;
 int PTR_ERR (struct ext4_ext_path*) ;
 int SHIFT_LEFT ;
 int ext4_ext_drop_refs (struct ext4_ext_path*) ;
 scalar_t__ ext4_ext_get_actual_len (struct ext4_extent*) ;
 scalar_t__ ext4_ext_next_allocated_block (struct ext4_ext_path*) ;
 int ext4_ext_shift_path_extents (struct ext4_ext_path*,scalar_t__,struct inode*,int *,int) ;
 struct ext4_ext_path* ext4_find_extent (struct inode*,scalar_t__,struct ext4_ext_path**,int ) ;
 int kfree (struct ext4_ext_path*) ;
 scalar_t__ le32_to_cpu (int ) ;

__attribute__((used)) static int
ext4_ext_shift_extents(struct inode *inode, handle_t *handle,
         ext4_lblk_t start, ext4_lblk_t shift,
         enum SHIFT_DIRECTION SHIFT)
{
 struct ext4_ext_path *path;
 int ret = 0, depth;
 struct ext4_extent *extent;
 ext4_lblk_t stop, *iterator, ex_start, ex_end;


 path = ext4_find_extent(inode, EXT_MAX_BLOCKS - 1, ((void*)0),
    EXT4_EX_NOCACHE);
 if (IS_ERR(path))
  return PTR_ERR(path);

 depth = path->p_depth;
 extent = path[depth].p_ext;
 if (!extent)
  goto out;

 stop = le32_to_cpu(extent->ee_block);






 if (SHIFT == SHIFT_LEFT) {
  path = ext4_find_extent(inode, start - 1, &path,
     EXT4_EX_NOCACHE);
  if (IS_ERR(path))
   return PTR_ERR(path);
  depth = path->p_depth;
  extent = path[depth].p_ext;
  if (extent) {
   ex_start = le32_to_cpu(extent->ee_block);
   ex_end = le32_to_cpu(extent->ee_block) +
    ext4_ext_get_actual_len(extent);
  } else {
   ex_start = 0;
   ex_end = 0;
  }

  if ((start == ex_start && shift > ex_start) ||
      (shift > start - ex_end)) {
   ret = -EINVAL;
   goto out;
  }
 } else {
  if (shift > EXT_MAX_BLOCKS -
      (stop + ext4_ext_get_actual_len(extent))) {
   ret = -EINVAL;
   goto out;
  }
 }






 if (SHIFT == SHIFT_LEFT)
  iterator = &start;
 else
  iterator = &stop;






 while (iterator && start <= stop) {
  path = ext4_find_extent(inode, *iterator, &path,
     EXT4_EX_NOCACHE);
  if (IS_ERR(path))
   return PTR_ERR(path);
  depth = path->p_depth;
  extent = path[depth].p_ext;
  if (!extent) {
   EXT4_ERROR_INODE(inode, "unexpected hole at %lu",
      (unsigned long) *iterator);
   return -EFSCORRUPTED;
  }
  if (SHIFT == SHIFT_LEFT && *iterator >
      le32_to_cpu(extent->ee_block)) {

   if (extent < EXT_LAST_EXTENT(path[depth].p_hdr)) {
    path[depth].p_ext++;
   } else {
    *iterator = ext4_ext_next_allocated_block(path);
    continue;
   }
  }

  if (SHIFT == SHIFT_LEFT) {
   extent = EXT_LAST_EXTENT(path[depth].p_hdr);
   *iterator = le32_to_cpu(extent->ee_block) +
     ext4_ext_get_actual_len(extent);
  } else {
   extent = EXT_FIRST_EXTENT(path[depth].p_hdr);
   if (le32_to_cpu(extent->ee_block) > 0)
    *iterator = le32_to_cpu(extent->ee_block) - 1;
   else

    iterator = ((void*)0);

   while (le32_to_cpu(extent->ee_block) < start)
    extent++;
   path[depth].p_ext = extent;
  }
  ret = ext4_ext_shift_path_extents(path, shift, inode,
    handle, SHIFT);
  if (ret)
   break;
 }
out:
 ext4_ext_drop_refs(path);
 kfree(path);
 return ret;
}
