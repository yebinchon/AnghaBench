
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsnotify_mark_connector {struct fsnotify_mark_connector* destroy_next; int lock; int list; } ;
struct fsnotify_mark {int g_list; int connector; int obj_list; int refcnt; } ;


 unsigned int FSNOTIFY_OBJ_TYPE_DETACHED ;
 int FSNOTIFY_REAPER_DELAY ;
 struct fsnotify_mark_connector* READ_ONCE (int ) ;
 int WRITE_ONCE (int ,int *) ;
 int __fsnotify_recalc_mask (struct fsnotify_mark_connector*) ;
 struct fsnotify_mark_connector* connector_destroy_list ;
 int connector_reaper_work ;
 int destroy_list ;
 int destroy_lock ;
 void* fsnotify_detach_connector_from_object (struct fsnotify_mark_connector*,unsigned int*) ;
 int fsnotify_drop_object (unsigned int,void*) ;
 int fsnotify_final_mark_destroy (struct fsnotify_mark*) ;
 int hlist_del_init_rcu (int *) ;
 scalar_t__ hlist_empty (int *) ;
 int list_add (int *,int *) ;
 int queue_delayed_work (int ,int *,int ) ;
 int queue_work (int ,int *) ;
 int reaper_work ;
 int refcount_dec_and_lock (int *,int *) ;
 scalar_t__ refcount_dec_and_test (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int system_unbound_wq ;

void fsnotify_put_mark(struct fsnotify_mark *mark)
{
 struct fsnotify_mark_connector *conn = READ_ONCE(mark->connector);
 void *objp = ((void*)0);
 unsigned int type = FSNOTIFY_OBJ_TYPE_DETACHED;
 bool free_conn = 0;


 if (!conn) {
  if (refcount_dec_and_test(&mark->refcnt))
   fsnotify_final_mark_destroy(mark);
  return;
 }





 if (!refcount_dec_and_lock(&mark->refcnt, &conn->lock))
  return;

 hlist_del_init_rcu(&mark->obj_list);
 if (hlist_empty(&conn->list)) {
  objp = fsnotify_detach_connector_from_object(conn, &type);
  free_conn = 1;
 } else {
  __fsnotify_recalc_mask(conn);
 }
 WRITE_ONCE(mark->connector, ((void*)0));
 spin_unlock(&conn->lock);

 fsnotify_drop_object(type, objp);

 if (free_conn) {
  spin_lock(&destroy_lock);
  conn->destroy_next = connector_destroy_list;
  connector_destroy_list = conn;
  spin_unlock(&destroy_lock);
  queue_work(system_unbound_wq, &connector_reaper_work);
 }






 spin_lock(&destroy_lock);
 list_add(&mark->g_list, &destroy_list);
 spin_unlock(&destroy_lock);
 queue_delayed_work(system_unbound_wq, &reaper_work,
      FSNOTIFY_REAPER_DELAY);
}
