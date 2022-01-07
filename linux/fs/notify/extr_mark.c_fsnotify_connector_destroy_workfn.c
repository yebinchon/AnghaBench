
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct work_struct {int dummy; } ;
struct fsnotify_mark_connector {struct fsnotify_mark_connector* destroy_next; } ;


 struct fsnotify_mark_connector* connector_destroy_list ;
 int destroy_lock ;
 int fsnotify_mark_connector_cachep ;
 int fsnotify_mark_srcu ;
 int kmem_cache_free (int ,struct fsnotify_mark_connector*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int synchronize_srcu (int *) ;

__attribute__((used)) static void fsnotify_connector_destroy_workfn(struct work_struct *work)
{
 struct fsnotify_mark_connector *conn, *free;

 spin_lock(&destroy_lock);
 conn = connector_destroy_list;
 connector_destroy_list = ((void*)0);
 spin_unlock(&destroy_lock);

 synchronize_srcu(&fsnotify_mark_srcu);
 while (conn) {
  free = conn;
  conn = conn->destroy_next;
  kmem_cache_free(fsnotify_mark_connector_cachep, free);
 }
}
