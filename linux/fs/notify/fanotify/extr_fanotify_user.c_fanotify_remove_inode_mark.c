
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_fsnotify_marks; } ;
struct fsnotify_group {int dummy; } ;
typedef int __u32 ;


 int fanotify_remove_mark (struct fsnotify_group*,int *,int ,unsigned int) ;

__attribute__((used)) static int fanotify_remove_inode_mark(struct fsnotify_group *group,
          struct inode *inode, __u32 mask,
          unsigned int flags)
{
 return fanotify_remove_mark(group, &inode->i_fsnotify_marks, mask,
        flags);
}
