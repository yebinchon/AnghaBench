
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct TYPE_2__ {int mdb_work; } ;


 TYPE_1__* HFS_SB (struct super_block*) ;
 int cancel_delayed_work_sync (int *) ;
 int hfs_mdb_close (struct super_block*) ;
 int hfs_mdb_put (struct super_block*) ;

__attribute__((used)) static void hfs_put_super(struct super_block *sb)
{
 cancel_delayed_work_sync(&HFS_SB(sb)->mdb_work);
 hfs_mdb_close(sb);

 hfs_mdb_put(sb);
}
