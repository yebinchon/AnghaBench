
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsnotify_group {int refcnt; } ;


 int fsnotify_final_destroy_group (struct fsnotify_group*) ;
 scalar_t__ refcount_dec_and_test (int *) ;

void fsnotify_put_group(struct fsnotify_group *group)
{
 if (refcount_dec_and_test(&group->refcnt))
  fsnotify_final_destroy_group(group);
}
