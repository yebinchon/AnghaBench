
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsnotify_mark {int dummy; } ;
struct fsnotify_group {int dummy; } ;


 int inotify_ignored_and_remove_idr (struct fsnotify_mark*,struct fsnotify_group*) ;

__attribute__((used)) static void inotify_freeing_mark(struct fsnotify_mark *fsn_mark, struct fsnotify_group *group)
{
 inotify_ignored_and_remove_idr(fsn_mark, group);
}
