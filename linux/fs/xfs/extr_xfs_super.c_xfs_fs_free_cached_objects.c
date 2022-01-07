
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct shrink_control {int nr_to_scan; } ;


 int XFS_M (struct super_block*) ;
 long xfs_reclaim_inodes_nr (int ,int ) ;

__attribute__((used)) static long
xfs_fs_free_cached_objects(
 struct super_block *sb,
 struct shrink_control *sc)
{
 return xfs_reclaim_inodes_nr(XFS_M(sb), sc->nr_to_scan);
}
