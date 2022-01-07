
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;


 int hfs_mdb_commit (struct super_block*) ;

__attribute__((used)) static int hfs_sync_fs(struct super_block *sb, int wait)
{
 hfs_mdb_commit(sb);
 return 0;
}
