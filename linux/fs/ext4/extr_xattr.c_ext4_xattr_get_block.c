
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_sb; } ;
struct buffer_head {int dummy; } ;
struct TYPE_2__ {int i_file_acl; } ;


 struct buffer_head* ERR_PTR (int) ;
 TYPE_1__* EXT4_I (struct inode*) ;
 scalar_t__ IS_ERR (struct buffer_head*) ;
 int REQ_PRIO ;
 int brelse (struct buffer_head*) ;
 struct buffer_head* ext4_sb_bread (int ,int ,int ) ;
 int ext4_xattr_check_block (struct inode*,struct buffer_head*) ;

__attribute__((used)) static struct buffer_head *ext4_xattr_get_block(struct inode *inode)
{
 struct buffer_head *bh;
 int error;

 if (!EXT4_I(inode)->i_file_acl)
  return ((void*)0);
 bh = ext4_sb_bread(inode->i_sb, EXT4_I(inode)->i_file_acl, REQ_PRIO);
 if (IS_ERR(bh))
  return bh;
 error = ext4_xattr_check_block(inode, bh);
 if (error) {
  brelse(bh);
  return ERR_PTR(error);
 }
 return bh;
}
