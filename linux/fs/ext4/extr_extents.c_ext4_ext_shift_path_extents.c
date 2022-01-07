
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct ext4_extent {int ee_block; } ;
struct ext4_ext_path {int p_depth; int p_hdr; TYPE_1__* p_idx; struct ext4_extent* p_ext; } ;
typedef int handle_t ;
typedef int ext4_lblk_t ;
typedef enum SHIFT_DIRECTION { ____Placeholder_SHIFT_DIRECTION } SHIFT_DIRECTION ;
struct TYPE_2__ {int ei_block; } ;


 int EFSCORRUPTED ;
 struct ext4_extent* EXT_FIRST_EXTENT (int ) ;
 TYPE_1__* EXT_FIRST_INDEX (int ) ;
 struct ext4_extent* EXT_LAST_EXTENT (int ) ;
 int SHIFT_LEFT ;
 int ext4_access_path (int *,struct inode*,struct ext4_ext_path*) ;
 int ext4_ext_dirty (int *,struct inode*,struct ext4_ext_path*) ;
 scalar_t__ ext4_ext_try_to_merge_right (struct inode*,struct ext4_ext_path*,struct ext4_extent*) ;
 int le32_add_cpu (int *,int ) ;

__attribute__((used)) static int
ext4_ext_shift_path_extents(struct ext4_ext_path *path, ext4_lblk_t shift,
       struct inode *inode, handle_t *handle,
       enum SHIFT_DIRECTION SHIFT)
{
 int depth, err = 0;
 struct ext4_extent *ex_start, *ex_last;
 bool update = 0;
 depth = path->p_depth;

 while (depth >= 0) {
  if (depth == path->p_depth) {
   ex_start = path[depth].p_ext;
   if (!ex_start)
    return -EFSCORRUPTED;

   ex_last = EXT_LAST_EXTENT(path[depth].p_hdr);

   err = ext4_access_path(handle, inode, path + depth);
   if (err)
    goto out;

   if (ex_start == EXT_FIRST_EXTENT(path[depth].p_hdr))
    update = 1;

   while (ex_start <= ex_last) {
    if (SHIFT == SHIFT_LEFT) {
     le32_add_cpu(&ex_start->ee_block,
      -shift);

     if ((ex_start >
         EXT_FIRST_EXTENT(path[depth].p_hdr))
         &&
         ext4_ext_try_to_merge_right(inode,
         path, ex_start - 1))
      ex_last--;
     else
      ex_start++;
    } else {
     le32_add_cpu(&ex_last->ee_block, shift);
     ext4_ext_try_to_merge_right(inode, path,
      ex_last);
     ex_last--;
    }
   }
   err = ext4_ext_dirty(handle, inode, path + depth);
   if (err)
    goto out;

   if (--depth < 0 || !update)
    break;
  }


  err = ext4_access_path(handle, inode, path + depth);
  if (err)
   goto out;

  if (SHIFT == SHIFT_LEFT)
   le32_add_cpu(&path[depth].p_idx->ei_block, -shift);
  else
   le32_add_cpu(&path[depth].p_idx->ei_block, shift);
  err = ext4_ext_dirty(handle, inode, path + depth);
  if (err)
   goto out;


  if (path[depth].p_idx != EXT_FIRST_INDEX(path[depth].p_hdr))
   break;

  depth--;
 }

out:
 return err;
}
