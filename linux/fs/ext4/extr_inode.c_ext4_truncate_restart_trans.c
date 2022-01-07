
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
typedef int handle_t ;
struct TYPE_2__ {int i_data_sem; } ;


 int BUG_ON (int ) ;
 TYPE_1__* EXT4_I (struct inode*) ;
 int * EXT4_JOURNAL (struct inode*) ;
 int down_write (int *) ;
 int ext4_discard_preallocations (struct inode*) ;
 int ext4_journal_restart (int *,int) ;
 int jbd_debug (int,char*,int *) ;
 int up_write (int *) ;

int ext4_truncate_restart_trans(handle_t *handle, struct inode *inode,
     int nblocks)
{
 int ret;







 BUG_ON(EXT4_JOURNAL(inode) == ((void*)0));
 jbd_debug(2, "restarting handle %p\n", handle);
 up_write(&EXT4_I(inode)->i_data_sem);
 ret = ext4_journal_restart(handle, nblocks);
 down_write(&EXT4_I(inode)->i_data_sem);
 ext4_discard_preallocations(inode);

 return ret;
}
