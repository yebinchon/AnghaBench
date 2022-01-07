
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct TYPE_9__ {int * base_ntfs_ino; } ;
struct TYPE_7__ {scalar_t__ vcn_size_bits; scalar_t__ block_size_bits; scalar_t__ collation_rule; scalar_t__ vcn_size; scalar_t__ block_size; } ;
struct TYPE_8__ {TYPE_1__ index; } ;
struct TYPE_11__ {int lock; } ;
struct TYPE_10__ {TYPE_3__ ext; scalar_t__ nr_extents; int extent_lock; TYPE_2__ itype; TYPE_5__ attr_list_rl; int * attr_list; scalar_t__ attr_list_size; scalar_t__ page_ofs; int * page; int mrec_lock; TYPE_5__ runlist; int vol; int count; scalar_t__ seq_no; scalar_t__ allocated_size; scalar_t__ initialized_size; int size_lock; } ;
typedef TYPE_4__ ntfs_inode ;


 int NTFS_SB (struct super_block*) ;
 int atomic_set (int *,int) ;
 int attr_list_rl_lock_class ;
 int lockdep_set_class (int *,int *) ;
 int mutex_init (int *) ;
 int ntfs_debug (char*) ;
 int ntfs_init_runlist (TYPE_5__*) ;
 int rwlock_init (int *) ;

void __ntfs_init_inode(struct super_block *sb, ntfs_inode *ni)
{
 ntfs_debug("Entering.");
 rwlock_init(&ni->size_lock);
 ni->initialized_size = ni->allocated_size = 0;
 ni->seq_no = 0;
 atomic_set(&ni->count, 1);
 ni->vol = NTFS_SB(sb);
 ntfs_init_runlist(&ni->runlist);
 mutex_init(&ni->mrec_lock);
 ni->page = ((void*)0);
 ni->page_ofs = 0;
 ni->attr_list_size = 0;
 ni->attr_list = ((void*)0);
 ntfs_init_runlist(&ni->attr_list_rl);
 lockdep_set_class(&ni->attr_list_rl.lock,
    &attr_list_rl_lock_class);
 ni->itype.index.block_size = 0;
 ni->itype.index.vcn_size = 0;
 ni->itype.index.collation_rule = 0;
 ni->itype.index.block_size_bits = 0;
 ni->itype.index.vcn_size_bits = 0;
 mutex_init(&ni->extent_lock);
 ni->nr_extents = 0;
 ni->ext.base_ntfs_ino = ((void*)0);
}
