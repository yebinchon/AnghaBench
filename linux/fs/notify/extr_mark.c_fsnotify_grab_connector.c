
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsnotify_mark_connector {scalar_t__ type; int lock; } ;
typedef int fsnotify_connp_t ;


 scalar_t__ FSNOTIFY_OBJ_TYPE_DETACHED ;
 int fsnotify_mark_srcu ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 struct fsnotify_mark_connector* srcu_dereference (int ,int *) ;
 int srcu_read_lock (int *) ;
 int srcu_read_unlock (int *,int) ;

__attribute__((used)) static struct fsnotify_mark_connector *fsnotify_grab_connector(
      fsnotify_connp_t *connp)
{
 struct fsnotify_mark_connector *conn;
 int idx;

 idx = srcu_read_lock(&fsnotify_mark_srcu);
 conn = srcu_dereference(*connp, &fsnotify_mark_srcu);
 if (!conn)
  goto out;
 spin_lock(&conn->lock);
 if (conn->type == FSNOTIFY_OBJ_TYPE_DETACHED) {
  spin_unlock(&conn->lock);
  srcu_read_unlock(&fsnotify_mark_srcu, idx);
  return ((void*)0);
 }
out:
 srcu_read_unlock(&fsnotify_mark_srcu, idx);
 return conn;
}
