
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_mount {struct super_block* m_super; } ;
struct super_block {int s_umount; } ;


 scalar_t__ down_read_trylock (int *) ;
 int sync_inodes_sb (struct super_block*) ;
 int up_read (int *) ;

void
xfs_flush_inodes(
 struct xfs_mount *mp)
{
 struct super_block *sb = mp->m_super;

 if (down_read_trylock(&sb->s_umount)) {
  sync_inodes_sb(sb);
  up_read(&sb->s_umount);
 }
}
