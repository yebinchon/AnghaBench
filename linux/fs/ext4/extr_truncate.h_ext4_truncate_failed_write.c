
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_size; int i_mapping; } ;
struct TYPE_2__ {int i_mmap_sem; } ;


 TYPE_1__* EXT4_I (struct inode*) ;
 int down_write (int *) ;
 int ext4_truncate (struct inode*) ;
 int truncate_inode_pages (int ,int ) ;
 int up_write (int *) ;

__attribute__((used)) static inline void ext4_truncate_failed_write(struct inode *inode)
{




 down_write(&EXT4_I(inode)->i_mmap_sem);
 truncate_inode_pages(inode->i_mapping, inode->i_size);
 ext4_truncate(inode);
 up_write(&EXT4_I(inode)->i_mmap_sem);
}
