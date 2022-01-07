
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ocfs2_cluster_connection {int dummy; } ;
struct TYPE_4__ {TYPE_1__* sp_ops; } ;
struct TYPE_3__ {int (* disconnect ) (struct ocfs2_cluster_connection*) ;} ;


 int BUG_ON (int ) ;
 TYPE_2__* active_stack ;
 int kfree (struct ocfs2_cluster_connection*) ;
 int ocfs2_stack_driver_put () ;
 int stub1 (struct ocfs2_cluster_connection*) ;

int ocfs2_cluster_disconnect(struct ocfs2_cluster_connection *conn,
        int hangup_pending)
{
 int ret;

 BUG_ON(conn == ((void*)0));

 ret = active_stack->sp_ops->disconnect(conn);


 if (!ret) {
  kfree(conn);
  if (!hangup_pending)
   ocfs2_stack_driver_put();
 }

 return ret;
}
