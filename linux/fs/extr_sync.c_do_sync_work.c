
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct work_struct {int dummy; } ;


 int fdatawrite_one_bdev ;
 int iterate_bdevs (int ,int *) ;
 int iterate_supers (int ,int*) ;
 int kfree (struct work_struct*) ;
 int printk (char*) ;
 int sync_fs_one_sb ;
 int sync_inodes_one_sb ;

__attribute__((used)) static void do_sync_work(struct work_struct *work)
{
 int nowait = 0;





 iterate_supers(sync_inodes_one_sb, &nowait);
 iterate_supers(sync_fs_one_sb, &nowait);
 iterate_bdevs(fdatawrite_one_bdev, ((void*)0));
 iterate_supers(sync_inodes_one_sb, &nowait);
 iterate_supers(sync_fs_one_sb, &nowait);
 iterate_bdevs(fdatawrite_one_bdev, ((void*)0));
 printk("Emergency Sync complete\n");
 kfree(work);
}
