
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct f2fs_sb_info {scalar_t__ fsync_node_num; scalar_t__ fsync_seg_id; int fsync_node_list; int fsync_node_lock; } ;


 int INIT_LIST_HEAD (int *) ;
 int spin_lock_init (int *) ;

void f2fs_init_fsync_node_info(struct f2fs_sb_info *sbi)
{
 spin_lock_init(&sbi->fsync_node_lock);
 INIT_LIST_HEAD(&sbi->fsync_node_list);
 sbi->fsync_seg_id = 0;
 sbi->fsync_node_num = 0;
}
