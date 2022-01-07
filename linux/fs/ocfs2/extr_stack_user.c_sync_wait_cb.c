
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_live_connection {int oc_sync_wait; } ;
struct ocfs2_cluster_connection {struct ocfs2_live_connection* cc_private; } ;


 int complete (int *) ;

__attribute__((used)) static void sync_wait_cb(void *arg)
{
 struct ocfs2_cluster_connection *conn = arg;
 struct ocfs2_live_connection *lc = conn->cc_private;
 complete(&lc->oc_sync_wait);
}
