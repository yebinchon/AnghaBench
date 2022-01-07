
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_sb; } ;
typedef int ext4_lblk_t ;
typedef int ext4_fsblk_t ;


 int GFP_NOFS ;
 scalar_t__ IS_ENCRYPTED (struct inode*) ;
 int fscrypt_zeroout_range (struct inode*,int ,int ,int ) ;
 int sb_issue_zeroout (int ,int ,int ,int ) ;

int ext4_issue_zeroout(struct inode *inode, ext4_lblk_t lblk, ext4_fsblk_t pblk,
         ext4_lblk_t len)
{
 int ret;

 if (IS_ENCRYPTED(inode))
  return fscrypt_zeroout_range(inode, lblk, pblk, len);

 ret = sb_issue_zeroout(inode->i_sb, pblk, len, GFP_NOFS);
 if (ret > 0)
  ret = 0;

 return ret;
}
