
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct TYPE_2__ {int i_data_sem; } ;


 TYPE_1__* EXT4_I (struct inode*) ;
 int up_write (int *) ;

void
ext4_double_up_write_data_sem(struct inode *orig_inode,
         struct inode *donor_inode)
{
 up_write(&EXT4_I(orig_inode)->i_data_sem);
 up_write(&EXT4_I(donor_inode)->i_data_sem);
}
