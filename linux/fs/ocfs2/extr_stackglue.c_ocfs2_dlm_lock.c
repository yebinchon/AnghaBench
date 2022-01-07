
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct ocfs2_dlm_lksb {struct ocfs2_cluster_connection* lksb_conn; } ;
struct ocfs2_cluster_connection {int dummy; } ;
struct TYPE_4__ {TYPE_1__* sp_ops; } ;
struct TYPE_3__ {int (* dlm_lock ) (struct ocfs2_cluster_connection*,int,struct ocfs2_dlm_lksb*,int ,void*,unsigned int) ;} ;


 int BUG_ON (int) ;
 TYPE_2__* active_stack ;
 int stub1 (struct ocfs2_cluster_connection*,int,struct ocfs2_dlm_lksb*,int ,void*,unsigned int) ;

int ocfs2_dlm_lock(struct ocfs2_cluster_connection *conn,
     int mode,
     struct ocfs2_dlm_lksb *lksb,
     u32 flags,
     void *name,
     unsigned int namelen)
{
 if (!lksb->lksb_conn)
  lksb->lksb_conn = conn;
 else
  BUG_ON(lksb->lksb_conn != conn);
 return active_stack->sp_ops->dlm_lock(conn, mode, lksb, flags,
           name, namelen);
}
