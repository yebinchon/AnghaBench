
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_cluster_connection {int * cc_private; int * cc_lockspace; } ;


 int dlm_release_lockspace (int *,int) ;
 int ocfs2_live_connection_drop (int *) ;
 int version_unlock (struct ocfs2_cluster_connection*) ;

__attribute__((used)) static int user_cluster_disconnect(struct ocfs2_cluster_connection *conn)
{
 version_unlock(conn);
 dlm_release_lockspace(conn->cc_lockspace, 2);
 conn->cc_lockspace = ((void*)0);
 ocfs2_live_connection_drop(conn->cc_private);
 conn->cc_private = ((void*)0);
 return 0;
}
