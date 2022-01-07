
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int kset; } ;
struct TYPE_4__ {TYPE_1__ kobject; } ;
struct xfs_mount {int m_finobt_nores; TYPE_2__ m_kobj; int m_cowblocks_work; int m_eofblocks_work; int m_reclaim_work; int m_active_trans; int m_growlock; int m_perag_lock; int m_perag_tree; int m_agirotor_lock; int m_sb_lock; struct super_block* m_super; } ;
struct super_block {int dummy; } ;


 int GFP_ATOMIC ;
 int GFP_KERNEL ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int INIT_RADIX_TREE (int *,int ) ;
 int atomic_set (int *,int ) ;
 struct xfs_mount* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int spin_lock_init (int *) ;
 int xfs_cowblocks_worker ;
 int xfs_eofblocks_worker ;
 int xfs_kset ;
 int xfs_reclaim_worker ;

__attribute__((used)) static struct xfs_mount *
xfs_mount_alloc(
 struct super_block *sb)
{
 struct xfs_mount *mp;

 mp = kzalloc(sizeof(struct xfs_mount), GFP_KERNEL);
 if (!mp)
  return ((void*)0);

 mp->m_super = sb;
 spin_lock_init(&mp->m_sb_lock);
 spin_lock_init(&mp->m_agirotor_lock);
 INIT_RADIX_TREE(&mp->m_perag_tree, GFP_ATOMIC);
 spin_lock_init(&mp->m_perag_lock);
 mutex_init(&mp->m_growlock);
 atomic_set(&mp->m_active_trans, 0);
 INIT_DELAYED_WORK(&mp->m_reclaim_work, xfs_reclaim_worker);
 INIT_DELAYED_WORK(&mp->m_eofblocks_work, xfs_eofblocks_worker);
 INIT_DELAYED_WORK(&mp->m_cowblocks_work, xfs_cowblocks_worker);
 mp->m_kobj.kobject.kset = xfs_kset;






 mp->m_finobt_nores = 1;
 return mp;
}
