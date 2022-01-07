
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_cluster_connection {int dummy; } ;


 int ocfs2_cluster_disconnect (struct ocfs2_cluster_connection*,int ) ;

void user_dlm_unregister(struct ocfs2_cluster_connection *conn)
{
 ocfs2_cluster_disconnect(conn, 0);
}
