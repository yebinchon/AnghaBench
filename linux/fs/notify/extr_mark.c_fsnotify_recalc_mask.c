
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsnotify_mark_connector {scalar_t__ type; int lock; } ;


 scalar_t__ FSNOTIFY_OBJ_TYPE_INODE ;
 int __fsnotify_recalc_mask (struct fsnotify_mark_connector*) ;
 int __fsnotify_update_child_dentry_flags (int ) ;
 int fsnotify_conn_inode (struct fsnotify_mark_connector*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void fsnotify_recalc_mask(struct fsnotify_mark_connector *conn)
{
 if (!conn)
  return;

 spin_lock(&conn->lock);
 __fsnotify_recalc_mask(conn);
 spin_unlock(&conn->lock);
 if (conn->type == FSNOTIFY_OBJ_TYPE_INODE)
  __fsnotify_update_child_dentry_flags(
     fsnotify_conn_inode(conn));
}
