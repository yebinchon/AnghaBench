
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_connection {int state; int sock; int in_msg; char* error_msg; scalar_t__ in_seq; scalar_t__ in_seq_acked; int out_queue; int * out_msg; scalar_t__ out_msg_done; scalar_t__ out_skip; scalar_t__ out_kvec_left; int out_kvec_bytes; int in_tag; } ;


 int BUG_ON (int) ;
 int CEPH_MSGR_TAG_READY ;
 int CON_FLAG_KEEPALIVE_PENDING ;
 int CON_FLAG_WRITE_PENDING ;
 scalar_t__ CON_STATE_CONNECTING ;
 scalar_t__ CON_STATE_NEGOTIATING ;
 scalar_t__ CON_STATE_OPEN ;
 scalar_t__ CON_STATE_PREOPEN ;
 int ceph_msg_put (int *) ;
 int ceph_tcp_connect (struct ceph_connection*) ;
 int con_flag_clear (struct ceph_connection*,int ) ;
 scalar_t__ con_flag_test_and_clear (struct ceph_connection*,int ) ;
 int con_out_kvec_reset (struct ceph_connection*) ;
 int dout (char*,...) ;
 int list_empty (int *) ;
 int prepare_read_banner (struct ceph_connection*) ;
 int prepare_write_ack (struct ceph_connection*) ;
 int prepare_write_banner (struct ceph_connection*) ;
 int prepare_write_keepalive (struct ceph_connection*) ;
 int prepare_write_message (struct ceph_connection*) ;
 int write_partial_kvec (struct ceph_connection*) ;
 int write_partial_message_data (struct ceph_connection*) ;
 int write_partial_skip (struct ceph_connection*) ;

__attribute__((used)) static int try_write(struct ceph_connection *con)
{
 int ret = 1;

 dout("try_write start %p state %lu\n", con, con->state);
 if (con->state != CON_STATE_PREOPEN &&
     con->state != CON_STATE_CONNECTING &&
     con->state != CON_STATE_NEGOTIATING &&
     con->state != CON_STATE_OPEN)
  return 0;


 if (con->state == CON_STATE_PREOPEN) {
  BUG_ON(con->sock);
  con->state = CON_STATE_CONNECTING;

  con_out_kvec_reset(con);
  prepare_write_banner(con);
  prepare_read_banner(con);

  BUG_ON(con->in_msg);
  con->in_tag = CEPH_MSGR_TAG_READY;
  dout("try_write initiating connect on %p new state %lu\n",
       con, con->state);
  ret = ceph_tcp_connect(con);
  if (ret < 0) {
   con->error_msg = "connect error";
   goto out;
  }
 }

more:
 dout("try_write out_kvec_bytes %d\n", con->out_kvec_bytes);
 BUG_ON(!con->sock);


 if (con->out_kvec_left) {
  ret = write_partial_kvec(con);
  if (ret <= 0)
   goto out;
 }
 if (con->out_skip) {
  ret = write_partial_skip(con);
  if (ret <= 0)
   goto out;
 }


 if (con->out_msg) {
  if (con->out_msg_done) {
   ceph_msg_put(con->out_msg);
   con->out_msg = ((void*)0);
   goto do_next;
  }

  ret = write_partial_message_data(con);
  if (ret == 1)
   goto more;
  if (ret == 0)
   goto out;
  if (ret < 0) {
   dout("try_write write_partial_message_data err %d\n",
        ret);
   goto out;
  }
 }

do_next:
 if (con->state == CON_STATE_OPEN) {
  if (con_flag_test_and_clear(con, CON_FLAG_KEEPALIVE_PENDING)) {
   prepare_write_keepalive(con);
   goto more;
  }

  if (!list_empty(&con->out_queue)) {
   prepare_write_message(con);
   goto more;
  }
  if (con->in_seq > con->in_seq_acked) {
   prepare_write_ack(con);
   goto more;
  }
 }


 con_flag_clear(con, CON_FLAG_WRITE_PENDING);
 dout("try_write nothing else to write.\n");
 ret = 0;
out:
 dout("try_write done on %p ret %d\n", con, ret);
 return ret;
}
