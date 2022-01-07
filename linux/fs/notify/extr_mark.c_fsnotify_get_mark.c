
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsnotify_mark {int refcnt; } ;


 int WARN_ON_ONCE (int) ;
 int refcount_inc (int *) ;
 int refcount_read (int *) ;

void fsnotify_get_mark(struct fsnotify_mark *mark)
{
 WARN_ON_ONCE(!refcount_read(&mark->refcnt));
 refcount_inc(&mark->refcnt);
}
