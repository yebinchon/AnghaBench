
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_blocks; int i_size; int i_ino; int i_sb; } ;
struct TYPE_2__ {int mmu_private; scalar_t__ i_n_secs; } ;


 scalar_t__ IS_IMMUTABLE (struct inode*) ;
 TYPE_1__* hpfs_i (struct inode*) ;
 int hpfs_lock_assert (int ) ;
 int hpfs_truncate_btree (int ,int ,int,int) ;
 int hpfs_write_inode (struct inode*) ;

void hpfs_truncate(struct inode *i)
{
 if (IS_IMMUTABLE(i)) return ;
 hpfs_lock_assert(i->i_sb);

 hpfs_i(i)->i_n_secs = 0;
 i->i_blocks = 1 + ((i->i_size + 511) >> 9);
 hpfs_i(i)->mmu_private = i->i_size;
 hpfs_truncate_btree(i->i_sb, i->i_ino, 1, ((i->i_size + 511) >> 9));
 hpfs_write_inode(i);
 hpfs_i(i)->i_n_secs = 0;
}
