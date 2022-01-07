
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_size; } ;
typedef int loff_t ;


 int round_up (int ,int) ;

__attribute__((used)) static inline loff_t f2fs_verity_metadata_pos(const struct inode *inode)
{
 return round_up(inode->i_size, 65536);
}
