
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ext4_inode_info {int i_mmap_sem; } ;


 int down_write (int *) ;
 int schedule () ;
 int up_write (int *) ;

__attribute__((used)) static void ext4_wait_dax_page(struct ext4_inode_info *ei)
{
 up_write(&ei->i_mmap_sem);
 schedule();
 down_write(&ei->i_mmap_sem);
}
