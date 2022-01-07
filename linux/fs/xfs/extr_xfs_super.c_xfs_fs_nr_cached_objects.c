
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int s_fs_info; } ;
struct shrink_control {int dummy; } ;


 scalar_t__ WARN_ON_ONCE (int) ;
 int XFS_M (struct super_block*) ;
 long xfs_reclaim_inodes_count (int ) ;

__attribute__((used)) static long
xfs_fs_nr_cached_objects(
 struct super_block *sb,
 struct shrink_control *sc)
{

 if (WARN_ON_ONCE(!sb->s_fs_info))
  return 0;
 return xfs_reclaim_inodes_count(XFS_M(sb));
}
