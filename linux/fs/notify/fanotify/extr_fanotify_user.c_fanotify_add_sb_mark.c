
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int s_fsnotify_marks; } ;
struct fsnotify_group {int dummy; } ;
typedef int __u32 ;
typedef int __kernel_fsid_t ;


 int FSNOTIFY_OBJ_TYPE_SB ;
 int fanotify_add_mark (struct fsnotify_group*,int *,int ,int ,unsigned int,int *) ;

__attribute__((used)) static int fanotify_add_sb_mark(struct fsnotify_group *group,
    struct super_block *sb, __u32 mask,
    unsigned int flags, __kernel_fsid_t *fsid)
{
 return fanotify_add_mark(group, &sb->s_fsnotify_marks,
     FSNOTIFY_OBJ_TYPE_SB, mask, flags, fsid);
}
