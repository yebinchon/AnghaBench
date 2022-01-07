
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct TYPE_2__ {int i_data_sem; } ;


 TYPE_1__* EXT4_I (struct inode*) ;
 int I_DATA_SEM_OTHER ;
 int down_write (int *) ;
 int down_write_nested (int *,int ) ;

void
ext4_double_down_write_data_sem(struct inode *first, struct inode *second)
{
 if (first < second) {
  down_write(&EXT4_I(first)->i_data_sem);
  down_write_nested(&EXT4_I(second)->i_data_sem, I_DATA_SEM_OTHER);
 } else {
  down_write(&EXT4_I(second)->i_data_sem);
  down_write_nested(&EXT4_I(first)->i_data_sem, I_DATA_SEM_OTHER);

 }
}
