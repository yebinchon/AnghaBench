
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_state; TYPE_1__* i_sb; int i_count; } ;
struct TYPE_2__ {int s_flags; } ;


 int I_DIRTY_ALL ;
 int I_FREEING ;
 int I_SYNC ;
 int I_WILL_FREE ;
 int SB_ACTIVE ;
 int atomic_read (int *) ;
 int inode_lru_list_add (struct inode*) ;

void inode_add_lru(struct inode *inode)
{
 if (!(inode->i_state & (I_DIRTY_ALL | I_SYNC |
    I_FREEING | I_WILL_FREE)) &&
     !atomic_read(&inode->i_count) && inode->i_sb->s_flags & SB_ACTIVE)
  inode_lru_list_add(inode);
}
