
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_13__ {TYPE_5__* peer; TYPE_4__* local; } ;
struct TYPE_10__ {int epoch; } ;
struct rxrpc_connection {TYPE_6__ params; int serial; int out_clientflag; TYPE_3__ proto; } ;
struct rxrpc_call {int debug_id; int abort_code; int service_id; int security_ix; int call_id; int cid; TYPE_2__* peer; int lock; scalar_t__ conn; int flags; } ;
struct TYPE_14__ {void* serial; int serviceId; scalar_t__ _rsvd; int securityIndex; scalar_t__ userStatus; int flags; int type; scalar_t__ seq; void* callNumber; void* cid; void* epoch; } ;
struct rxrpc_abort_buffer {TYPE_7__ whdr; void* abort_code; } ;
struct msghdr {scalar_t__ msg_flags; scalar_t__ msg_controllen; int * msg_control; int msg_namelen; int * msg_name; } ;
struct kvec {int iov_len; struct rxrpc_abort_buffer* iov_base; } ;
typedef int rxrpc_serial_t ;
typedef int pkt ;
struct TYPE_12__ {int last_tx_at; } ;
struct TYPE_11__ {int socket; } ;
struct TYPE_8__ {int transport_len; int transport; } ;
struct TYPE_9__ {TYPE_1__ srx; } ;


 int ECONNRESET ;
 int RXRPC_CALL_TX_LAST ;
 int RXRPC_PACKET_TYPE_ABORT ;
 int atomic_inc_return (int *) ;
 void* htonl (int ) ;
 int htons (int ) ;
 int kernel_sendmsg (int ,struct msghdr*,struct kvec*,int,int) ;
 int ktime_get_seconds () ;
 struct rxrpc_connection* rxrpc_get_connection_maybe (scalar_t__) ;
 scalar_t__ rxrpc_is_client_call (struct rxrpc_call*) ;
 int rxrpc_put_connection (struct rxrpc_connection*) ;
 int rxrpc_tx_backoff (struct rxrpc_call*,int) ;
 int rxrpc_tx_point_call_abort ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 scalar_t__ test_bit (int ,int *) ;
 int trace_rxrpc_tx_fail (int ,int ,int,int ) ;
 int trace_rxrpc_tx_packet (int ,TYPE_7__*,int ) ;

int rxrpc_send_abort_packet(struct rxrpc_call *call)
{
 struct rxrpc_connection *conn = ((void*)0);
 struct rxrpc_abort_buffer pkt;
 struct msghdr msg;
 struct kvec iov[1];
 rxrpc_serial_t serial;
 int ret;







 if (rxrpc_is_client_call(call) &&
     test_bit(RXRPC_CALL_TX_LAST, &call->flags))
  return 0;

 spin_lock_bh(&call->lock);
 if (call->conn)
  conn = rxrpc_get_connection_maybe(call->conn);
 spin_unlock_bh(&call->lock);
 if (!conn)
  return -ECONNRESET;

 msg.msg_name = &call->peer->srx.transport;
 msg.msg_namelen = call->peer->srx.transport_len;
 msg.msg_control = ((void*)0);
 msg.msg_controllen = 0;
 msg.msg_flags = 0;

 pkt.whdr.epoch = htonl(conn->proto.epoch);
 pkt.whdr.cid = htonl(call->cid);
 pkt.whdr.callNumber = htonl(call->call_id);
 pkt.whdr.seq = 0;
 pkt.whdr.type = RXRPC_PACKET_TYPE_ABORT;
 pkt.whdr.flags = conn->out_clientflag;
 pkt.whdr.userStatus = 0;
 pkt.whdr.securityIndex = call->security_ix;
 pkt.whdr._rsvd = 0;
 pkt.whdr.serviceId = htons(call->service_id);
 pkt.abort_code = htonl(call->abort_code);

 iov[0].iov_base = &pkt;
 iov[0].iov_len = sizeof(pkt);

 serial = atomic_inc_return(&conn->serial);
 pkt.whdr.serial = htonl(serial);

 ret = kernel_sendmsg(conn->params.local->socket,
        &msg, iov, 1, sizeof(pkt));
 conn->params.peer->last_tx_at = ktime_get_seconds();
 if (ret < 0)
  trace_rxrpc_tx_fail(call->debug_id, serial, ret,
        rxrpc_tx_point_call_abort);
 else
  trace_rxrpc_tx_packet(call->debug_id, &pkt.whdr,
          rxrpc_tx_point_call_abort);
 rxrpc_tx_backoff(call, ret);

 rxrpc_put_connection(conn);
 return ret;
}
