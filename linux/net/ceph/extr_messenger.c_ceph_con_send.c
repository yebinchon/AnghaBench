
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int data_len; int middle_len; int front_len; int type; int src; } ;
struct TYPE_7__ {scalar_t__ iov_len; } ;
struct ceph_msg {int needs_out_seq; TYPE_4__ hdr; int list_head; TYPE_3__ front; } ;
struct ceph_connection {scalar_t__ state; int mutex; int peer_name; int out_queue; TYPE_2__* msgr; } ;
struct TYPE_5__ {int name; } ;
struct TYPE_6__ {TYPE_1__ inst; } ;


 int BUG_ON (int) ;
 int CON_FLAG_WRITE_PENDING ;
 scalar_t__ CON_STATE_CLOSED ;
 int ENTITY_NAME (int ) ;
 int ceph_msg_put (struct ceph_msg*) ;
 int ceph_msg_type_name (int ) ;
 int clear_standby (struct ceph_connection*) ;
 scalar_t__ con_flag_test_and_set (struct ceph_connection*,int ) ;
 int dout (char*,...) ;
 int le16_to_cpu (int ) ;
 scalar_t__ le32_to_cpu (int ) ;
 int list_add_tail (int *,int *) ;
 int list_empty (int *) ;
 int msg_con_set (struct ceph_msg*,struct ceph_connection*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int queue_con (struct ceph_connection*) ;

void ceph_con_send(struct ceph_connection *con, struct ceph_msg *msg)
{

 msg->hdr.src = con->msgr->inst.name;
 BUG_ON(msg->front.iov_len != le32_to_cpu(msg->hdr.front_len));
 msg->needs_out_seq = 1;

 mutex_lock(&con->mutex);

 if (con->state == CON_STATE_CLOSED) {
  dout("con_send %p closed, dropping %p\n", con, msg);
  ceph_msg_put(msg);
  mutex_unlock(&con->mutex);
  return;
 }

 msg_con_set(msg, con);

 BUG_ON(!list_empty(&msg->list_head));
 list_add_tail(&msg->list_head, &con->out_queue);
 dout("----- %p to %s%lld %d=%s len %d+%d+%d -----\n", msg,
      ENTITY_NAME(con->peer_name), le16_to_cpu(msg->hdr.type),
      ceph_msg_type_name(le16_to_cpu(msg->hdr.type)),
      le32_to_cpu(msg->hdr.front_len),
      le32_to_cpu(msg->hdr.middle_len),
      le32_to_cpu(msg->hdr.data_len));

 clear_standby(con);
 mutex_unlock(&con->mutex);



 if (con_flag_test_and_set(con, CON_FLAG_WRITE_PENDING) == 0)
  queue_con(con);
}
