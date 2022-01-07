
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef union smc_host_cursor {int dummy; } smc_host_cursor ;
struct sock {scalar_t__ sk_state; int sk_shutdown; } ;
struct TYPE_3__ {int cons; } ;
struct smc_connection {scalar_t__ urg_state; int urg_rx_skip_pend; int urg_curs; TYPE_2__* rmb_desc; TYPE_1__ local_tx_ctrl; int urg_rx_byte; } ;
struct smc_sock {struct smc_connection conn; struct sock sk; } ;
struct msghdr {int msg_flags; } ;
struct TYPE_4__ {int len; } ;


 int EAGAIN ;
 int EFAULT ;
 int EINVAL ;
 int MSG_OOB ;
 int MSG_PEEK ;
 int MSG_TRUNC ;
 int RCV_SHUTDOWN ;
 scalar_t__ SMC_CLOSED ;
 scalar_t__ SMC_URG_READ ;
 scalar_t__ SMC_URG_VALID ;
 int SOCK_URGINLINE ;
 int memcpy_to_msg (struct msghdr*,int *,int) ;
 int smc_curs_copy (union smc_host_cursor*,int *,struct smc_connection*) ;
 int smc_curs_diff (int ,union smc_host_cursor*,int *) ;
 int smc_rx_update_consumer (struct smc_sock*,union smc_host_cursor,int ) ;
 scalar_t__ sock_flag (struct sock*,int ) ;

__attribute__((used)) static int smc_rx_recv_urg(struct smc_sock *smc, struct msghdr *msg, int len,
      int flags)
{
 struct smc_connection *conn = &smc->conn;
 union smc_host_cursor cons;
 struct sock *sk = &smc->sk;
 int rc = 0;

 if (sock_flag(sk, SOCK_URGINLINE) ||
     !(conn->urg_state == SMC_URG_VALID) ||
     conn->urg_state == SMC_URG_READ)
  return -EINVAL;

 if (conn->urg_state == SMC_URG_VALID) {
  if (!(flags & MSG_PEEK))
   smc->conn.urg_state = SMC_URG_READ;
  msg->msg_flags |= MSG_OOB;
  if (len > 0) {
   if (!(flags & MSG_TRUNC))
    rc = memcpy_to_msg(msg, &conn->urg_rx_byte, 1);
   len = 1;
   smc_curs_copy(&cons, &conn->local_tx_ctrl.cons, conn);
   if (smc_curs_diff(conn->rmb_desc->len, &cons,
       &conn->urg_curs) > 1)
    conn->urg_rx_skip_pend = 1;



   if (!(flags & MSG_PEEK))
    smc_rx_update_consumer(smc, cons, 0);
  } else {
   msg->msg_flags |= MSG_TRUNC;
  }

  return rc ? -EFAULT : len;
 }

 if (sk->sk_state == SMC_CLOSED || sk->sk_shutdown & RCV_SHUTDOWN)
  return 0;

 return -EAGAIN;
}
