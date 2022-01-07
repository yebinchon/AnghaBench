
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct migrate_struct {int curr_block; } ;
struct inode {TYPE_1__* i_sb; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef int handle_t ;
typedef int ext4_fsblk_t ;
typedef scalar_t__ __le32 ;
struct TYPE_2__ {int s_blocksize; } ;


 scalar_t__ IS_ERR (struct buffer_head*) ;
 int PTR_ERR (struct buffer_head*) ;
 struct buffer_head* ext4_sb_bread (TYPE_1__*,int ,int ) ;
 int le32_to_cpu (scalar_t__) ;
 int put_bh (struct buffer_head*) ;
 int update_extent_range (int *,struct inode*,int ,struct migrate_struct*) ;

__attribute__((used)) static int update_ind_extent_range(handle_t *handle, struct inode *inode,
       ext4_fsblk_t pblock,
       struct migrate_struct *lb)
{
 struct buffer_head *bh;
 __le32 *i_data;
 int i, retval = 0;
 unsigned long max_entries = inode->i_sb->s_blocksize >> 2;

 bh = ext4_sb_bread(inode->i_sb, pblock, 0);
 if (IS_ERR(bh))
  return PTR_ERR(bh);

 i_data = (__le32 *)bh->b_data;
 for (i = 0; i < max_entries; i++) {
  if (i_data[i]) {
   retval = update_extent_range(handle, inode,
      le32_to_cpu(i_data[i]), lb);
   if (retval)
    break;
  } else {
   lb->curr_block++;
  }
 }
 put_bh(bh);
 return retval;

}
