
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_sb; } ;
typedef unsigned int loff_t ;


 int ext4_has_feature_large_file (int ) ;
 scalar_t__ likely (int ) ;

__attribute__((used)) static int ext4_da_write_credits(struct inode *inode, loff_t pos, unsigned len)
{
 if (likely(ext4_has_feature_large_file(inode->i_sb)))
  return 1;

 if (pos + len <= 0x7fffffffULL)
  return 1;


 return 2;
}
