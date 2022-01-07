
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int s_fsnotify_marks; } ;
struct fsnotify_group {int dummy; } ;
typedef int __u32 ;


 int fanotify_remove_mark (struct fsnotify_group*,int *,int ,unsigned int) ;

__attribute__((used)) static int fanotify_remove_sb_mark(struct fsnotify_group *group,
          struct super_block *sb, __u32 mask,
          unsigned int flags)
{
 return fanotify_remove_mark(group, &sb->s_fsnotify_marks, mask, flags);
}
