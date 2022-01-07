
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsnotify_mark {int dummy; } ;
struct fsnotify_group {int mark_mutex; } ;


 int SINGLE_DEPTH_NESTING ;
 int fsnotify_detach_mark (struct fsnotify_mark*) ;
 int fsnotify_free_mark (struct fsnotify_mark*) ;
 int mutex_lock_nested (int *,int ) ;
 int mutex_unlock (int *) ;

void fsnotify_destroy_mark(struct fsnotify_mark *mark,
      struct fsnotify_group *group)
{
 mutex_lock_nested(&group->mark_mutex, SINGLE_DEPTH_NESTING);
 fsnotify_detach_mark(mark);
 mutex_unlock(&group->mark_mutex);
 fsnotify_free_mark(mark);
}
