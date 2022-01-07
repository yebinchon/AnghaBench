
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
typedef int loff_t ;
typedef int __u64 ;


 scalar_t__ KEY_FORMAT_3_5 ;
 int U32_MAX ;
 scalar_t__ get_inode_item_key_version (struct inode*) ;

__attribute__((used)) static inline loff_t max_reiserfs_offset(struct inode *inode)
{
 if (get_inode_item_key_version(inode) == KEY_FORMAT_3_5)
  return (loff_t) U32_MAX;

 return (loff_t) ((~(__u64) 0) >> 4);
}
