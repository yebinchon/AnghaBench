
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ type; } ;
struct TYPE_4__ {int data_len; int front_len; int type; TYPE_3__ src; int seq; } ;
struct ceph_msg {TYPE_1__ hdr; struct ceph_connection* con; } ;
struct ceph_connection {int mutex; TYPE_2__* ops; int in_data_crc; int in_middle_crc; int in_front_crc; int in_seq; TYPE_3__ peer_name; struct ceph_msg* in_msg; } ;
struct TYPE_5__ {int (* dispatch ) (struct ceph_connection*,struct ceph_msg*) ;} ;


 int BUG_ON (int) ;
 int ENTITY_NAME (TYPE_3__) ;
 int ceph_msg_type_name (int ) ;
 int dout (char*,struct ceph_msg*,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;
 int le64_to_cpu (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct ceph_connection*,struct ceph_msg*) ;

__attribute__((used)) static void process_message(struct ceph_connection *con)
{
 struct ceph_msg *msg = con->in_msg;

 BUG_ON(con->in_msg->con != con);
 con->in_msg = ((void*)0);


 if (con->peer_name.type == 0)
  con->peer_name = msg->hdr.src;

 con->in_seq++;
 mutex_unlock(&con->mutex);

 dout("===== %p %llu from %s%lld %d=%s len %d+%d (%u %u %u) =====\n",
      msg, le64_to_cpu(msg->hdr.seq),
      ENTITY_NAME(msg->hdr.src),
      le16_to_cpu(msg->hdr.type),
      ceph_msg_type_name(le16_to_cpu(msg->hdr.type)),
      le32_to_cpu(msg->hdr.front_len),
      le32_to_cpu(msg->hdr.data_len),
      con->in_front_crc, con->in_middle_crc, con->in_data_crc);
 con->ops->dispatch(con, msg);

 mutex_lock(&con->mutex);
}
