
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsnotify_mark_connector {int type; } ;
typedef int __u32 ;


 scalar_t__ WARN_ON (int) ;
 int * fsnotify_conn_mask_p (struct fsnotify_mark_connector*) ;
 int fsnotify_valid_obj_type (int ) ;

__u32 fsnotify_conn_mask(struct fsnotify_mark_connector *conn)
{
 if (WARN_ON(!fsnotify_valid_obj_type(conn->type)))
  return 0;

 return *fsnotify_conn_mask_p(conn);
}
