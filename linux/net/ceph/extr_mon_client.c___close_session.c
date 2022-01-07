
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_mon_client {int auth; scalar_t__ pending_auth; int con; int m_subscribe_ack; int m_subscribe; int m_auth_reply; int m_auth; int cur_mon; } ;


 int ceph_auth_reset (int ) ;
 int ceph_con_close (int *) ;
 int ceph_msg_revoke (int ) ;
 int ceph_msg_revoke_incoming (int ) ;
 int dout (char*,int ) ;

__attribute__((used)) static void __close_session(struct ceph_mon_client *monc)
{
 dout("__close_session closing mon%d\n", monc->cur_mon);
 ceph_msg_revoke(monc->m_auth);
 ceph_msg_revoke_incoming(monc->m_auth_reply);
 ceph_msg_revoke(monc->m_subscribe);
 ceph_msg_revoke_incoming(monc->m_subscribe_ack);
 ceph_con_close(&monc->con);

 monc->pending_auth = 0;
 ceph_auth_reset(monc->auth);
}
