
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ xfs_ino_t ;
struct xfs_mount {int m_super; } ;
struct xfs_inode {scalar_t__ i_ino; int i_ioend_lock; int i_ioend_list; int i_ioend_work; scalar_t__ i_checked; scalar_t__ i_sick; int i_d; scalar_t__ i_delayed_blks; scalar_t__ i_flags; int i_df; int i_cformat; scalar_t__ i_cnextents; int * i_cowfp; int * i_afp; int i_imap; struct xfs_mount* i_mount; int i_pincount; } ;
struct xfs_imap {int dummy; } ;
struct TYPE_3__ {scalar_t__ i_mode; } ;


 int ASSERT (int) ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 TYPE_1__* VFS_I (struct xfs_inode*) ;
 int XFS_DINODE_FMT_EXTENTS ;
 int XFS_STATS_INC (struct xfs_mount*,int ) ;
 scalar_t__ atomic_read (int *) ;
 scalar_t__ inode_init_always (int ,TYPE_1__*) ;
 struct xfs_inode* kmem_zone_alloc (int ,int ) ;
 int kmem_zone_free (int ,struct xfs_inode*) ;
 int memset (int *,int ,int) ;
 int spin_lock_init (int *) ;
 int vn_active ;
 int xfs_end_io ;
 int xfs_inode_zone ;
 int xfs_isiflocked (struct xfs_inode*) ;

struct xfs_inode *
xfs_inode_alloc(
 struct xfs_mount *mp,
 xfs_ino_t ino)
{
 struct xfs_inode *ip;






 ip = kmem_zone_alloc(xfs_inode_zone, 0);
 if (!ip)
  return ((void*)0);
 if (inode_init_always(mp->m_super, VFS_I(ip))) {
  kmem_zone_free(xfs_inode_zone, ip);
  return ((void*)0);
 }


 VFS_I(ip)->i_mode = 0;

 XFS_STATS_INC(mp, vn_active);
 ASSERT(atomic_read(&ip->i_pincount) == 0);
 ASSERT(!xfs_isiflocked(ip));
 ASSERT(ip->i_ino == 0);


 ip->i_ino = ino;
 ip->i_mount = mp;
 memset(&ip->i_imap, 0, sizeof(struct xfs_imap));
 ip->i_afp = ((void*)0);
 ip->i_cowfp = ((void*)0);
 ip->i_cnextents = 0;
 ip->i_cformat = XFS_DINODE_FMT_EXTENTS;
 memset(&ip->i_df, 0, sizeof(ip->i_df));
 ip->i_flags = 0;
 ip->i_delayed_blks = 0;
 memset(&ip->i_d, 0, sizeof(ip->i_d));
 ip->i_sick = 0;
 ip->i_checked = 0;
 INIT_WORK(&ip->i_ioend_work, xfs_end_io);
 INIT_LIST_HEAD(&ip->i_ioend_list);
 spin_lock_init(&ip->i_ioend_lock);

 return ip;
}
