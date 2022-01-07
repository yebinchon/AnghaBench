
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct msdos_sb_info {int inode_hash_lock; } ;
struct inode {int dummy; } ;
typedef int loff_t ;
struct TYPE_2__ {int i_pos; } ;


 TYPE_1__* MSDOS_I (struct inode*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static inline loff_t fat_i_pos_read(struct msdos_sb_info *sbi,
     struct inode *inode)
{
 loff_t i_pos;



 i_pos = MSDOS_I(inode)->i_pos;



 return i_pos;
}
