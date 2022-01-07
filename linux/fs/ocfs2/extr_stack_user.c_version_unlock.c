
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_live_connection {int oc_version_lksb; } ;
struct ocfs2_cluster_connection {struct ocfs2_live_connection* cc_private; } ;


 int VERSION_LOCK ;
 int sync_unlock (struct ocfs2_cluster_connection*,int *,int ) ;

__attribute__((used)) static int version_unlock(struct ocfs2_cluster_connection *conn)
{
 struct ocfs2_live_connection *lc = conn->cc_private;
 return sync_unlock(conn, &lc->oc_version_lksb, VERSION_LOCK);
}
