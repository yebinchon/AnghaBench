
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_live_connection {int oc_version_lksb; } ;
struct ocfs2_cluster_connection {struct ocfs2_live_connection* cc_private; } ;


 int VERSION_LOCK ;
 int sync_lock (struct ocfs2_cluster_connection*,int,int,int *,int ) ;

__attribute__((used)) static int version_lock(struct ocfs2_cluster_connection *conn, int mode,
  int flags)
{
 struct ocfs2_live_connection *lc = conn->cc_private;
 return sync_lock(conn, mode, flags,
   &lc->oc_version_lksb, VERSION_LOCK);
}
