
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsnotify_group {int refcnt; } ;


 int refcount_inc (int *) ;

void fsnotify_get_group(struct fsnotify_group *group)
{
 refcount_inc(&group->refcnt);
}
