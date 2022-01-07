
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int WB_REASON_SYNC ;
 int fdatawait_one_bdev ;
 int fdatawrite_one_bdev ;
 int iterate_bdevs (int ,int *) ;
 int iterate_supers (int ,int*) ;
 int laptop_mode ;
 int laptop_sync_completion () ;
 int sync_fs_one_sb ;
 int sync_inodes_one_sb ;
 scalar_t__ unlikely (int ) ;
 int wakeup_flusher_threads (int ) ;

void ksys_sync(void)
{
 int nowait = 0, wait = 1;

 wakeup_flusher_threads(WB_REASON_SYNC);
 iterate_supers(sync_inodes_one_sb, ((void*)0));
 iterate_supers(sync_fs_one_sb, &nowait);
 iterate_supers(sync_fs_one_sb, &wait);
 iterate_bdevs(fdatawrite_one_bdev, ((void*)0));
 iterate_bdevs(fdatawait_one_bdev, ((void*)0));
 if (unlikely(laptop_mode))
  laptop_sync_completion();
}
