
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct fsnotify_mark_connector {scalar_t__ type; } ;
typedef int __u32 ;
struct TYPE_6__ {int i_fsnotify_mask; } ;
struct TYPE_5__ {int mnt_fsnotify_mask; } ;
struct TYPE_4__ {int s_fsnotify_mask; } ;


 scalar_t__ FSNOTIFY_OBJ_TYPE_INODE ;
 scalar_t__ FSNOTIFY_OBJ_TYPE_SB ;
 scalar_t__ FSNOTIFY_OBJ_TYPE_VFSMOUNT ;
 TYPE_3__* fsnotify_conn_inode (struct fsnotify_mark_connector*) ;
 TYPE_2__* fsnotify_conn_mount (struct fsnotify_mark_connector*) ;
 TYPE_1__* fsnotify_conn_sb (struct fsnotify_mark_connector*) ;

__attribute__((used)) static __u32 *fsnotify_conn_mask_p(struct fsnotify_mark_connector *conn)
{
 if (conn->type == FSNOTIFY_OBJ_TYPE_INODE)
  return &fsnotify_conn_inode(conn)->i_fsnotify_mask;
 else if (conn->type == FSNOTIFY_OBJ_TYPE_VFSMOUNT)
  return &fsnotify_conn_mount(conn)->mnt_fsnotify_mask;
 else if (conn->type == FSNOTIFY_OBJ_TYPE_SB)
  return &fsnotify_conn_sb(conn)->s_fsnotify_mask;
 return ((void*)0);
}
