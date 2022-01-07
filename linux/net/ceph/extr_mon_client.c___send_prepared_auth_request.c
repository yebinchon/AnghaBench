
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct ceph_mon_client {int pending_auth; TYPE_3__* m_auth; int con; } ;
struct TYPE_7__ {int front_len; } ;
struct TYPE_6__ {int iov_len; } ;
struct TYPE_8__ {TYPE_2__ hdr; TYPE_1__ front; } ;


 int ceph_con_send (int *,TYPE_3__*) ;
 int ceph_msg_get (TYPE_3__*) ;
 int ceph_msg_revoke (TYPE_3__*) ;
 int cpu_to_le32 (int) ;

__attribute__((used)) static void __send_prepared_auth_request(struct ceph_mon_client *monc, int len)
{
 monc->pending_auth = 1;
 monc->m_auth->front.iov_len = len;
 monc->m_auth->hdr.front_len = cpu_to_le32(len);
 ceph_msg_revoke(monc->m_auth);
 ceph_msg_get(monc->m_auth);
 ceph_con_send(&monc->con, monc->m_auth);
}
