
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsnotify_mark {int dummy; } ;


 int audit_mark (struct fsnotify_mark*) ;
 int audit_tree_mark_cachep ;
 int kmem_cache_free (int ,int ) ;

__attribute__((used)) static void audit_tree_destroy_watch(struct fsnotify_mark *mark)
{
 kmem_cache_free(audit_tree_mark_cachep, audit_mark(mark));
}
