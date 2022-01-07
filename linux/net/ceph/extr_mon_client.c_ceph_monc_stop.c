
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_mon_client {int cur_mon; int monmap; int m_subscribe_ack; int m_subscribe; int m_auth_reply; int m_auth; int generic_request_tree; int auth; int mutex; int delayed_work; } ;


 int RB_EMPTY_ROOT (int *) ;
 int WARN_ON (int) ;
 int __close_session (struct ceph_mon_client*) ;
 int cancel_delayed_work_sync (int *) ;
 int ceph_auth_destroy (int ) ;
 int ceph_msg_put (int ) ;
 int ceph_msgr_flush () ;
 int dout (char*) ;
 int kfree (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void ceph_monc_stop(struct ceph_mon_client *monc)
{
 dout("stop\n");
 cancel_delayed_work_sync(&monc->delayed_work);

 mutex_lock(&monc->mutex);
 __close_session(monc);
 monc->cur_mon = -1;
 mutex_unlock(&monc->mutex);







 ceph_msgr_flush();

 ceph_auth_destroy(monc->auth);

 WARN_ON(!RB_EMPTY_ROOT(&monc->generic_request_tree));

 ceph_msg_put(monc->m_auth);
 ceph_msg_put(monc->m_auth_reply);
 ceph_msg_put(monc->m_subscribe);
 ceph_msg_put(monc->m_subscribe_ack);

 kfree(monc->monmap);
}
