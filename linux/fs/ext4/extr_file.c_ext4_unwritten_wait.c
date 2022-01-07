
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int wait_queue_head_t ;
struct inode {int dummy; } ;
struct TYPE_2__ {int i_unwritten; } ;


 TYPE_1__* EXT4_I (struct inode*) ;
 scalar_t__ atomic_read (int *) ;
 int * ext4_ioend_wq (struct inode*) ;
 int wait_event (int ,int) ;

__attribute__((used)) static void ext4_unwritten_wait(struct inode *inode)
{
 wait_queue_head_t *wq = ext4_ioend_wq(inode);

 wait_event(*wq, (atomic_read(&EXT4_I(inode)->i_unwritten) == 0));
}
