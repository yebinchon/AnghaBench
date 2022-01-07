
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct inode {int i_sb; } ;
struct buffer_head {int dummy; } ;
struct TYPE_4__ {int xattr_sem; } ;
struct TYPE_3__ {int s_journal; } ;


 TYPE_2__* EXT4_I (struct inode*) ;
 TYPE_1__* EXT4_SB (int ) ;
 scalar_t__ IS_ERR (struct buffer_head*) ;
 int PTR_ERR (struct buffer_head*) ;
 int __ext4_xattr_set_credits (int ,struct inode*,struct buffer_head*,size_t,int) ;
 int brelse (struct buffer_head*) ;
 int down_read (int *) ;
 struct buffer_head* ext4_xattr_get_block (struct inode*) ;
 int up_read (int *) ;

int ext4_xattr_set_credits(struct inode *inode, size_t value_len,
      bool is_create, int *credits)
{
 struct buffer_head *bh;
 int err;

 *credits = 0;

 if (!EXT4_SB(inode->i_sb)->s_journal)
  return 0;

 down_read(&EXT4_I(inode)->xattr_sem);

 bh = ext4_xattr_get_block(inode);
 if (IS_ERR(bh)) {
  err = PTR_ERR(bh);
 } else {
  *credits = __ext4_xattr_set_credits(inode->i_sb, inode, bh,
          value_len, is_create);
  brelse(bh);
  err = 0;
 }

 up_read(&EXT4_I(inode)->xattr_sem);
 return err;
}
