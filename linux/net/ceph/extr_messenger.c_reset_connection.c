
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ceph_connection {scalar_t__ out_skip; scalar_t__ in_seq_acked; scalar_t__ in_seq; TYPE_1__* out_msg; scalar_t__ out_seq; scalar_t__ connect_seq; TYPE_1__* in_msg; int out_sent; int out_queue; } ;
struct TYPE_2__ {struct ceph_connection* con; } ;


 int BUG_ON (int) ;
 int ceph_msg_put (TYPE_1__*) ;
 int ceph_msg_remove_list (int *) ;
 int dout (char*,struct ceph_connection*) ;

__attribute__((used)) static void reset_connection(struct ceph_connection *con)
{


 dout("reset_connection %p\n", con);
 ceph_msg_remove_list(&con->out_queue);
 ceph_msg_remove_list(&con->out_sent);

 if (con->in_msg) {
  BUG_ON(con->in_msg->con != con);
  ceph_msg_put(con->in_msg);
  con->in_msg = ((void*)0);
 }

 con->connect_seq = 0;
 con->out_seq = 0;
 if (con->out_msg) {
  BUG_ON(con->out_msg->con != con);
  ceph_msg_put(con->out_msg);
  con->out_msg = ((void*)0);
 }
 con->in_seq = 0;
 con->in_seq_acked = 0;

 con->out_skip = 0;
}
