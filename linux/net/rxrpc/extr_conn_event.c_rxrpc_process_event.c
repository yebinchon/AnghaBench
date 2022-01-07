
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int wtmp ;
typedef int u32 ;
struct sk_buff {int dummy; } ;
struct rxrpc_wire_header {int dummy; } ;
struct TYPE_6__ {int type; int cid; int serial; } ;
struct rxrpc_skb_priv {TYPE_3__ hdr; } ;
struct rxrpc_connection {scalar_t__ state; int error; int channel_lock; int state_lock; TYPE_2__* channels; TYPE_1__* security; int abort_code; int debug_id; } ;
typedef int __be32 ;
struct TYPE_5__ {int call; } ;
struct TYPE_4__ {int (* respond_to_challenge ) (struct rxrpc_connection*,struct sk_buff*,int *) ;int (* verify_response ) (struct rxrpc_connection*,struct sk_buff*,int *) ;int (* init_connection_security ) (struct rxrpc_connection*) ;int (* prime_packet_security ) (struct rxrpc_connection*) ;} ;


 int ECONNABORTED ;
 int EPROTO ;
 int RXRPC_CALL_REMOTELY_ABORTED ;
 int RXRPC_CHANNELMASK ;
 scalar_t__ RXRPC_CONN_REMOTELY_ABORTED ;
 scalar_t__ RXRPC_CONN_SERVICE ;
 scalar_t__ RXRPC_CONN_SERVICE_CHALLENGING ;
 int RXRPC_MAXCALLS ;






 int _enter (char*,int ,int,int ) ;
 int _leave (char*,scalar_t__) ;
 int _proto (char*,int ,int ) ;
 int lockdep_is_held (int *) ;
 int ntohl (int ) ;
 int rcu_dereference_protected (int ,int ) ;
 int rxrpc_abort_calls (struct rxrpc_connection*,int ,int ) ;
 int rxrpc_call_is_secure (int ) ;
 int rxrpc_conn_retransmit_call (struct rxrpc_connection*,struct sk_buff*,int) ;
 struct rxrpc_skb_priv* rxrpc_skb (struct sk_buff*) ;
 int skb_copy_bits (struct sk_buff*,int,int *,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (struct rxrpc_connection*,struct sk_buff*,int *) ;
 int stub2 (struct rxrpc_connection*,struct sk_buff*,int *) ;
 int stub3 (struct rxrpc_connection*) ;
 int stub4 (struct rxrpc_connection*) ;
 int trace_rxrpc_rx_eproto (int *,int ,int ) ;
 int tracepoint_string (char*) ;

__attribute__((used)) static int rxrpc_process_event(struct rxrpc_connection *conn,
          struct sk_buff *skb,
          u32 *_abort_code)
{
 struct rxrpc_skb_priv *sp = rxrpc_skb(skb);
 __be32 wtmp;
 u32 abort_code;
 int loop, ret;

 if (conn->state >= RXRPC_CONN_REMOTELY_ABORTED) {
  _leave(" = -ECONNABORTED [%u]", conn->state);
  return -ECONNABORTED;
 }

 _enter("{%d},{%u,%%%u},", conn->debug_id, sp->hdr.type, sp->hdr.serial);

 switch (sp->hdr.type) {
 case 129:
 case 132:
  rxrpc_conn_retransmit_call(conn, skb,
        sp->hdr.cid & RXRPC_CHANNELMASK);
  return 0;

 case 131:

  return 0;

 case 133:
  if (skb_copy_bits(skb, sizeof(struct rxrpc_wire_header),
      &wtmp, sizeof(wtmp)) < 0) {
   trace_rxrpc_rx_eproto(((void*)0), sp->hdr.serial,
           tracepoint_string("bad_abort"));
   return -EPROTO;
  }
  abort_code = ntohl(wtmp);
  _proto("Rx ABORT %%%u { ac=%d }", sp->hdr.serial, abort_code);

  conn->error = -ECONNABORTED;
  conn->abort_code = abort_code;
  conn->state = RXRPC_CONN_REMOTELY_ABORTED;
  rxrpc_abort_calls(conn, RXRPC_CALL_REMOTELY_ABORTED, sp->hdr.serial);
  return -ECONNABORTED;

 case 130:
  return conn->security->respond_to_challenge(conn, skb,
           _abort_code);

 case 128:
  ret = conn->security->verify_response(conn, skb, _abort_code);
  if (ret < 0)
   return ret;

  ret = conn->security->init_connection_security(conn);
  if (ret < 0)
   return ret;

  ret = conn->security->prime_packet_security(conn);
  if (ret < 0)
   return ret;

  spin_lock(&conn->channel_lock);
  spin_lock(&conn->state_lock);

  if (conn->state == RXRPC_CONN_SERVICE_CHALLENGING) {
   conn->state = RXRPC_CONN_SERVICE;
   spin_unlock(&conn->state_lock);
   for (loop = 0; loop < RXRPC_MAXCALLS; loop++)
    rxrpc_call_is_secure(
     rcu_dereference_protected(
      conn->channels[loop].call,
      lockdep_is_held(&conn->channel_lock)));
  } else {
   spin_unlock(&conn->state_lock);
  }

  spin_unlock(&conn->channel_lock);
  return 0;

 default:
  trace_rxrpc_rx_eproto(((void*)0), sp->hdr.serial,
          tracepoint_string("bad_conn_pkt"));
  return -EPROTO;
 }
}
