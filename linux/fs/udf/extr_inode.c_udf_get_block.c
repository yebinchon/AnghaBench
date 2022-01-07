
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct udf_inode_info {scalar_t__ i_next_alloc_block; int i_data_sem; int i_next_alloc_goal; } ;
struct inode {int i_sb; } ;
struct buffer_head {int dummy; } ;
typedef scalar_t__ sector_t ;


 int EIO ;
 struct udf_inode_info* UDF_I (struct inode*) ;
 int down_write (int *) ;
 scalar_t__ inode_getblk (struct inode*,scalar_t__,int*,int*) ;
 int map_bh (struct buffer_head*,int ,scalar_t__) ;
 int set_buffer_new (struct buffer_head*) ;
 scalar_t__ udf_block_map (struct inode*,scalar_t__) ;
 int udf_clear_extent_cache (struct inode*) ;
 int up_write (int *) ;

__attribute__((used)) static int udf_get_block(struct inode *inode, sector_t block,
    struct buffer_head *bh_result, int create)
{
 int err, new;
 sector_t phys = 0;
 struct udf_inode_info *iinfo;

 if (!create) {
  phys = udf_block_map(inode, block);
  if (phys)
   map_bh(bh_result, inode->i_sb, phys);
  return 0;
 }

 err = -EIO;
 new = 0;
 iinfo = UDF_I(inode);

 down_write(&iinfo->i_data_sem);
 if (block == iinfo->i_next_alloc_block + 1) {
  iinfo->i_next_alloc_block++;
  iinfo->i_next_alloc_goal++;
 }

 udf_clear_extent_cache(inode);
 phys = inode_getblk(inode, block, &err, &new);
 if (!phys)
  goto abort;

 if (new)
  set_buffer_new(bh_result);
 map_bh(bh_result, inode->i_sb, phys);

abort:
 up_write(&iinfo->i_data_sem);
 return err;
}
