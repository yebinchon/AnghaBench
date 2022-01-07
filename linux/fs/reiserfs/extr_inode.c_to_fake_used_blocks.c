
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ulong ;
struct inode {int i_mode; } ;
typedef scalar_t__ loff_t ;


 scalar_t__ S_ISDIR (int ) ;
 scalar_t__ S_ISLNK (int ) ;
 scalar_t__ inode_get_bytes (struct inode*) ;
 scalar_t__ real_space_diff (struct inode*,int) ;

__attribute__((used)) static inline ulong to_fake_used_blocks(struct inode *inode, int sd_size)
{
 loff_t bytes = inode_get_bytes(inode);
 loff_t real_space = real_space_diff(inode, sd_size);


 if (S_ISLNK(inode->i_mode) || S_ISDIR(inode->i_mode)) {
  bytes += (loff_t) 511;
 }






 if (bytes < real_space)
  return 0;
 return (bytes - real_space) >> 9;
}
