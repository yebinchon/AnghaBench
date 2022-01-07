
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct ocfs2_cluster_connection {int dummy; } ;
struct file_lock {int dummy; } ;
struct file {int dummy; } ;
struct TYPE_4__ {TYPE_1__* sp_ops; } ;
struct TYPE_3__ {int (* plock ) (struct ocfs2_cluster_connection*,int ,struct file*,int,struct file_lock*) ;} ;


 int EOPNOTSUPP ;
 int WARN_ON_ONCE (int ) ;
 TYPE_2__* active_stack ;
 int stub1 (struct ocfs2_cluster_connection*,int ,struct file*,int,struct file_lock*) ;

int ocfs2_plock(struct ocfs2_cluster_connection *conn, u64 ino,
  struct file *file, int cmd, struct file_lock *fl)
{
 WARN_ON_ONCE(active_stack->sp_ops->plock == ((void*)0));
 if (active_stack->sp_ops->plock)
  return active_stack->sp_ops->plock(conn, ino, file, cmd, fl);
 return -EOPNOTSUPP;
}
