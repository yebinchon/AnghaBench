
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct inode {TYPE_1__* i_sb; } ;
struct fiemap_extent_info {int dummy; } ;
struct extent_status {scalar_t__ es_lblk; scalar_t__ es_len; scalar_t__ es_pblk; } ;
struct ext4_extent {int ee_block; } ;
struct ext4_ext_path {struct ext4_extent* p_ext; int * p_hdr; } ;
typedef scalar_t__ ext4_lblk_t ;
typedef unsigned char __u64 ;
struct TYPE_4__ {int i_data_sem; } ;
struct TYPE_3__ {unsigned char s_blocksize_bits; } ;


 int BUG () ;
 int BUG_ON (int) ;
 int EFSCORRUPTED ;
 int EXT4_ERROR_INODE (struct inode*,char*,...) ;
 TYPE_2__* EXT4_I (struct inode*) ;
 scalar_t__ EXT_MAX_BLOCKS ;
 unsigned int FIEMAP_EXTENT_DELALLOC ;
 unsigned int FIEMAP_EXTENT_LAST ;
 unsigned int FIEMAP_EXTENT_UNKNOWN ;
 unsigned int FIEMAP_EXTENT_UNWRITTEN ;
 scalar_t__ IS_ERR (struct ext4_ext_path*) ;
 int PTR_ERR (struct ext4_ext_path*) ;
 int down_read (int *) ;
 int ext4_ext_drop_refs (struct ext4_ext_path*) ;
 scalar_t__ ext4_ext_get_actual_len (struct ext4_extent*) ;
 scalar_t__ ext4_ext_is_unwritten (struct ext4_extent*) ;
 scalar_t__ ext4_ext_next_allocated_block (struct ext4_ext_path*) ;
 scalar_t__ ext4_ext_pblock (struct ext4_extent*) ;
 scalar_t__ ext4_find_delayed_extent (struct inode*,struct extent_status*) ;
 struct ext4_ext_path* ext4_find_extent (struct inode*,scalar_t__,struct ext4_ext_path**,int ) ;
 int ext_depth (struct inode*) ;
 int fiemap_fill_next_extent (struct fiemap_extent_info*,unsigned char,unsigned char,unsigned char,unsigned int) ;
 int kfree (struct ext4_ext_path*) ;
 scalar_t__ le32_to_cpu (int ) ;
 scalar_t__ unlikely (int) ;
 int up_read (int *) ;

__attribute__((used)) static int ext4_fill_fiemap_extents(struct inode *inode,
        ext4_lblk_t block, ext4_lblk_t num,
        struct fiemap_extent_info *fieinfo)
{
 struct ext4_ext_path *path = ((void*)0);
 struct ext4_extent *ex;
 struct extent_status es;
 ext4_lblk_t next, next_del, start = 0, end = 0;
 ext4_lblk_t last = block + num;
 int exists, depth = 0, err = 0;
 unsigned int flags = 0;
 unsigned char blksize_bits = inode->i_sb->s_blocksize_bits;

 while (block < last && block != EXT_MAX_BLOCKS) {
  num = last - block;

  down_read(&EXT4_I(inode)->i_data_sem);

  path = ext4_find_extent(inode, block, &path, 0);
  if (IS_ERR(path)) {
   up_read(&EXT4_I(inode)->i_data_sem);
   err = PTR_ERR(path);
   path = ((void*)0);
   break;
  }

  depth = ext_depth(inode);
  if (unlikely(path[depth].p_hdr == ((void*)0))) {
   up_read(&EXT4_I(inode)->i_data_sem);
   EXT4_ERROR_INODE(inode, "path[%d].p_hdr == NULL", depth);
   err = -EFSCORRUPTED;
   break;
  }
  ex = path[depth].p_ext;
  next = ext4_ext_next_allocated_block(path);

  flags = 0;
  exists = 0;
  if (!ex) {


   start = block;
   end = block + num;
  } else if (le32_to_cpu(ex->ee_block) > block) {

   start = block;
   end = le32_to_cpu(ex->ee_block);
   if (block + num < end)
    end = block + num;
  } else if (block >= le32_to_cpu(ex->ee_block)
     + ext4_ext_get_actual_len(ex)) {

   start = block;
   end = block + num;
   if (end >= next)
    end = next;
  } else if (block >= le32_to_cpu(ex->ee_block)) {




   start = block;
   end = le32_to_cpu(ex->ee_block)
    + ext4_ext_get_actual_len(ex);
   if (block + num < end)
    end = block + num;
   exists = 1;
  } else {
   BUG();
  }
  BUG_ON(end <= start);

  if (!exists) {
   es.es_lblk = start;
   es.es_len = end - start;
   es.es_pblk = 0;
  } else {
   es.es_lblk = le32_to_cpu(ex->ee_block);
   es.es_len = ext4_ext_get_actual_len(ex);
   es.es_pblk = ext4_ext_pblock(ex);
   if (ext4_ext_is_unwritten(ex))
    flags |= FIEMAP_EXTENT_UNWRITTEN;
  }






  next_del = ext4_find_delayed_extent(inode, &es);
  if (!exists && next_del) {
   exists = 1;
   flags |= (FIEMAP_EXTENT_DELALLOC |
      FIEMAP_EXTENT_UNKNOWN);
  }
  up_read(&EXT4_I(inode)->i_data_sem);

  if (unlikely(es.es_len == 0)) {
   EXT4_ERROR_INODE(inode, "es.es_len == 0");
   err = -EFSCORRUPTED;
   break;
  }
  if (next == next_del && next == EXT_MAX_BLOCKS) {
   flags |= FIEMAP_EXTENT_LAST;
   if (unlikely(next_del != EXT_MAX_BLOCKS ||
         next != EXT_MAX_BLOCKS)) {
    EXT4_ERROR_INODE(inode,
       "next extent == %u, next "
       "delalloc extent = %u",
       next, next_del);
    err = -EFSCORRUPTED;
    break;
   }
  }

  if (exists) {
   err = fiemap_fill_next_extent(fieinfo,
    (__u64)es.es_lblk << blksize_bits,
    (__u64)es.es_pblk << blksize_bits,
    (__u64)es.es_len << blksize_bits,
    flags);
   if (err < 0)
    break;
   if (err == 1) {
    err = 0;
    break;
   }
  }

  block = es.es_lblk + es.es_len;
 }

 ext4_ext_drop_refs(path);
 kfree(path);
 return err;
}
