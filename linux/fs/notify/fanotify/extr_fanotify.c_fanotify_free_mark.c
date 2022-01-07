
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsnotify_mark {int dummy; } ;


 int fanotify_mark_cache ;
 int kmem_cache_free (int ,struct fsnotify_mark*) ;

__attribute__((used)) static void fanotify_free_mark(struct fsnotify_mark *fsn_mark)
{
 kmem_cache_free(fanotify_mark_cache, fsn_mark);
}
