
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;


 int fsnotify_clear_marks_by_sb (struct super_block*) ;
 int fsnotify_unmount_inodes (struct super_block*) ;

void fsnotify_sb_delete(struct super_block *sb)
{
 fsnotify_unmount_inodes(sb);
 fsnotify_clear_marks_by_sb(sb);
}
