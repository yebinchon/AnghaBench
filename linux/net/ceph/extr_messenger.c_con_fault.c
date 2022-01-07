
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ceph_connection {scalar_t__ state; int delay; int out_queue; int out_sent; TYPE_1__* in_msg; int * error_msg; int peer_addr; int peer_name; } ;
struct TYPE_2__ {struct ceph_connection* con; } ;


 int BASE_DELAY_INTERVAL ;
 int BUG_ON (int) ;
 int CON_FLAG_BACKOFF ;
 int CON_FLAG_KEEPALIVE_PENDING ;
 int CON_FLAG_LOSSYTX ;
 int CON_FLAG_WRITE_PENDING ;
 scalar_t__ CON_STATE_CLOSED ;
 scalar_t__ CON_STATE_CONNECTING ;
 scalar_t__ CON_STATE_NEGOTIATING ;
 scalar_t__ CON_STATE_OPEN ;
 scalar_t__ CON_STATE_PREOPEN ;
 scalar_t__ CON_STATE_STANDBY ;
 int ENTITY_NAME (int ) ;
 int MAX_DELAY_INTERVAL ;
 int WARN_ON (int) ;
 int ceph_msg_put (TYPE_1__*) ;
 int ceph_pr_addr (int *) ;
 int con_close_socket (struct ceph_connection*) ;
 int con_flag_clear (struct ceph_connection*,int ) ;
 int con_flag_set (struct ceph_connection*,int ) ;
 scalar_t__ con_flag_test (struct ceph_connection*,int ) ;
 int dout (char*,...) ;
 scalar_t__ list_empty (int *) ;
 int list_splice_init (int *,int *) ;
 int pr_warn (char*,int ,int ,int *) ;
 int queue_con (struct ceph_connection*) ;

__attribute__((used)) static void con_fault(struct ceph_connection *con)
{
 dout("fault %p state %lu to peer %s\n",
      con, con->state, ceph_pr_addr(&con->peer_addr));

 pr_warn("%s%lld %s %s\n", ENTITY_NAME(con->peer_name),
  ceph_pr_addr(&con->peer_addr), con->error_msg);
 con->error_msg = ((void*)0);

 WARN_ON(con->state != CON_STATE_CONNECTING &&
        con->state != CON_STATE_NEGOTIATING &&
        con->state != CON_STATE_OPEN);

 con_close_socket(con);

 if (con_flag_test(con, CON_FLAG_LOSSYTX)) {
  dout("fault on LOSSYTX channel, marking CLOSED\n");
  con->state = CON_STATE_CLOSED;
  return;
 }

 if (con->in_msg) {
  BUG_ON(con->in_msg->con != con);
  ceph_msg_put(con->in_msg);
  con->in_msg = ((void*)0);
 }


 list_splice_init(&con->out_sent, &con->out_queue);



 if (list_empty(&con->out_queue) &&
     !con_flag_test(con, CON_FLAG_KEEPALIVE_PENDING)) {
  dout("fault %p setting STANDBY clearing WRITE_PENDING\n", con);
  con_flag_clear(con, CON_FLAG_WRITE_PENDING);
  con->state = CON_STATE_STANDBY;
 } else {

  con->state = CON_STATE_PREOPEN;
  if (con->delay == 0)
   con->delay = BASE_DELAY_INTERVAL;
  else if (con->delay < MAX_DELAY_INTERVAL)
   con->delay *= 2;
  con_flag_set(con, CON_FLAG_BACKOFF);
  queue_con(con);
 }
}
