
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct udphdr {int dummy; } ;
struct sock {int dummy; } ;
struct sk_buff {scalar_t__ tstamp; void* priority; int mark; } ;
struct TYPE_5__ {scalar_t__ srx_service; } ;
struct rxrpc_sock {scalar_t__ second_service; TYPE_2__ srx; } ;
struct TYPE_6__ {int type; scalar_t__ callNumber; int seq; scalar_t__ securityIndex; scalar_t__ serviceId; unsigned int cid; scalar_t__ serial; int flags; } ;
struct rxrpc_skb_priv {TYPE_3__ hdr; } ;
struct rxrpc_peer {int dummy; } ;
struct rxrpc_local {scalar_t__ service; } ;
struct TYPE_4__ {int service_id; } ;
struct rxrpc_connection {scalar_t__ security_ix; scalar_t__ service_id; struct rxrpc_channel* channels; scalar_t__ hi_serial; int debug_id; TYPE_1__ params; int flags; } ;
struct rxrpc_channel {scalar_t__ last_call; int const last_type; scalar_t__ call_id; scalar_t__ call; int call_debug_id; } ;
struct rxrpc_call {scalar_t__ service_id; int user_mutex; int usage; int flags; scalar_t__ rx_serial; } ;


 int CONFIG_AF_RXRPC_INJECT_LOSS ;
 int EBADMSG ;
 int EOPNOTSUPP ;
 int GFP_ATOMIC ;
 scalar_t__ IS_ENABLED (int ) ;
 void* RXKADINCONSISTENCY ;
 int RXRPC_CALL_RX_HEARD ;
 unsigned int RXRPC_CHANNELMASK ;
 int RXRPC_CONN_PROBING_FOR_UPGRADE ;
 int RXRPC_SKB_MARK_REJECT_ABORT ;
 void* RX_INVALID_OPERATION ;
 void* RX_PROTOCOL_ERROR ;
 int _debug (char*,struct rxrpc_connection*,int ) ;
 int _enter (char*,struct sock*) ;
 int _leave (char*) ;
 int _proto (char*,int) ;
 scalar_t__ atomic_read (int *) ;
 int cmpxchg (scalar_t__*,int,scalar_t__) ;
 int kfree_skb (struct sk_buff*) ;
 void* ktime_get_real () ;
 int mutex_unlock (int *) ;
 void* rcu_dereference (scalar_t__) ;
 struct rxrpc_local* rcu_dereference_sk_user_data (struct sock*) ;
 scalar_t__ rxrpc_conn_is_service (struct rxrpc_connection*) ;
 int rxrpc_eaten_skb (struct sk_buff*,int ) ;
 scalar_t__ rxrpc_extract_header (struct rxrpc_skb_priv*,struct sk_buff*) ;
 struct rxrpc_connection* rxrpc_find_connection_rcu (struct rxrpc_local*,struct sk_buff*,struct rxrpc_peer**) ;
 int rxrpc_free_skb (struct sk_buff*,int ) ;
 int rxrpc_input_call_packet (struct rxrpc_call*,struct sk_buff*) ;
 int rxrpc_input_implicit_end_call (struct rxrpc_sock*,struct rxrpc_connection*,struct rxrpc_call*) ;
 struct rxrpc_call* rxrpc_new_incoming_call (struct rxrpc_local*,struct rxrpc_sock*,struct sk_buff*) ;
 int rxrpc_new_skb (struct sk_buff*,int ) ;
 int rxrpc_post_packet_to_conn (struct rxrpc_connection*,struct sk_buff*) ;
 int rxrpc_post_packet_to_local (struct rxrpc_local*,struct sk_buff*) ;
 int rxrpc_reject_packet (struct rxrpc_local*,struct sk_buff*) ;
 int rxrpc_send_ping (struct rxrpc_call*,struct sk_buff*) ;
 struct rxrpc_skb_priv* rxrpc_skb (struct sk_buff*) ;
 int rxrpc_skb_freed ;
 int rxrpc_skb_lost ;
 int rxrpc_skb_received ;
 int rxrpc_skb_unshared ;
 int rxrpc_skb_unshared_nomem ;
 scalar_t__ rxrpc_to_client (struct rxrpc_skb_priv*) ;
 scalar_t__ rxrpc_to_server (struct rxrpc_skb_priv*) ;
 int rxrpc_validate_data (struct sk_buff*) ;
 int set_bit (int ,int *) ;
 int skb_pull (struct sk_buff*,int) ;
 struct sk_buff* skb_unshare (struct sk_buff*,int ) ;
 int test_bit (int ,int *) ;
 int trace_rxrpc_abort (int ,char*,unsigned int,scalar_t__,int,void*,int ) ;
 int trace_rxrpc_rx_data (int ,int,scalar_t__,int ,int ) ;
 int trace_rxrpc_rx_done (int ,void*) ;
 int trace_rxrpc_rx_lose (struct rxrpc_skb_priv*) ;
 int trace_rxrpc_rx_packet (struct rxrpc_skb_priv*) ;
 scalar_t__ unlikely (int) ;

int rxrpc_input_packet(struct sock *udp_sk, struct sk_buff *skb)
{
 struct rxrpc_local *local = rcu_dereference_sk_user_data(udp_sk);
 struct rxrpc_connection *conn;
 struct rxrpc_channel *chan;
 struct rxrpc_call *call = ((void*)0);
 struct rxrpc_skb_priv *sp;
 struct rxrpc_peer *peer = ((void*)0);
 struct rxrpc_sock *rx = ((void*)0);
 unsigned int channel;

 _enter("%p", udp_sk);

 if (unlikely(!local)) {
  kfree_skb(skb);
  return 0;
 }
 if (skb->tstamp == 0)
  skb->tstamp = ktime_get_real();

 rxrpc_new_skb(skb, rxrpc_skb_received);

 skb_pull(skb, sizeof(struct udphdr));




 sp = rxrpc_skb(skb);


 if (rxrpc_extract_header(sp, skb) < 0)
  goto bad_message;

 if (IS_ENABLED(CONFIG_AF_RXRPC_INJECT_LOSS)) {
  static int lose;
  if ((lose++ & 7) == 7) {
   trace_rxrpc_rx_lose(sp);
   rxrpc_free_skb(skb, rxrpc_skb_lost);
   return 0;
  }
 }

 if (skb->tstamp == 0)
  skb->tstamp = ktime_get_real();
 trace_rxrpc_rx_packet(sp);

 switch (sp->hdr.type) {
 case 128:
  if (rxrpc_to_client(sp))
   goto discard;
  rxrpc_post_packet_to_local(local, skb);
  goto out;

 case 133:
  if (rxrpc_to_server(sp))
   goto discard;

 case 135:
 case 134:
  if (sp->hdr.callNumber == 0)
   goto bad_message;

 case 136:
  break;

 case 131:
  if (sp->hdr.callNumber == 0 ||
      sp->hdr.seq == 0)
   goto bad_message;
  if (!rxrpc_validate_data(skb))
   goto bad_message;




  if (sp->hdr.securityIndex != 0) {
   struct sk_buff *nskb = skb_unshare(skb, GFP_ATOMIC);
   if (!nskb) {
    rxrpc_eaten_skb(skb, rxrpc_skb_unshared_nomem);
    goto out;
   }

   if (nskb != skb) {
    rxrpc_eaten_skb(skb, rxrpc_skb_received);
    skb = nskb;
    rxrpc_new_skb(skb, rxrpc_skb_unshared);
    sp = rxrpc_skb(skb);
   }
  }
  break;

 case 132:
  if (rxrpc_to_server(sp))
   goto discard;
  break;
 case 129:
  if (rxrpc_to_client(sp))
   goto discard;
  break;


 case 130:
 case 138:
 case 137:
  goto discard;

 default:
  _proto("Rx Bad Packet Type %u", sp->hdr.type);
  goto bad_message;
 }

 if (sp->hdr.serviceId == 0)
  goto bad_message;

 if (rxrpc_to_server(sp)) {




  rx = rcu_dereference(local->service);
  if (!rx || (sp->hdr.serviceId != rx->srx.srx_service &&
       sp->hdr.serviceId != rx->second_service)) {
   if (sp->hdr.type == 131 &&
       sp->hdr.seq == 1)
    goto unsupported_service;
   goto discard;
  }
 }

 conn = rxrpc_find_connection_rcu(local, skb, &peer);
 if (conn) {
  if (sp->hdr.securityIndex != conn->security_ix)
   goto wrong_security;

  if (sp->hdr.serviceId != conn->service_id) {
   int old_id;

   if (!test_bit(RXRPC_CONN_PROBING_FOR_UPGRADE, &conn->flags))
    goto reupgrade;
   old_id = cmpxchg(&conn->service_id, conn->params.service_id,
      sp->hdr.serviceId);

   if (old_id != conn->params.service_id &&
       old_id != sp->hdr.serviceId)
    goto reupgrade;
  }

  if (sp->hdr.callNumber == 0) {

   _debug("CONN %p {%d}", conn, conn->debug_id);
   rxrpc_post_packet_to_conn(conn, skb);
   goto out;
  }

  if ((int)sp->hdr.serial - (int)conn->hi_serial > 0)
   conn->hi_serial = sp->hdr.serial;


  channel = sp->hdr.cid & RXRPC_CHANNELMASK;
  chan = &conn->channels[channel];


  if (sp->hdr.callNumber < chan->last_call)
   goto discard;

  if (sp->hdr.callNumber == chan->last_call) {
   if (chan->call ||
       sp->hdr.type == 136)
    goto discard;




   if (rxrpc_conn_is_service(conn) &&
       chan->last_type == 135)
    goto discard;




   if (sp->hdr.type == 131)
    trace_rxrpc_rx_data(chan->call_debug_id,
          sp->hdr.seq,
          sp->hdr.serial,
          sp->hdr.flags, 0);
   rxrpc_post_packet_to_conn(conn, skb);
   goto out;
  }

  call = rcu_dereference(chan->call);

  if (sp->hdr.callNumber > chan->call_id) {
   if (rxrpc_to_client(sp))
    goto reject_packet;
   if (call)
    rxrpc_input_implicit_end_call(rx, conn, call);
   call = ((void*)0);
  }

  if (call) {
   if (sp->hdr.serviceId != call->service_id)
    call->service_id = sp->hdr.serviceId;
   if ((int)sp->hdr.serial - (int)call->rx_serial > 0)
    call->rx_serial = sp->hdr.serial;
   if (!test_bit(RXRPC_CALL_RX_HEARD, &call->flags))
    set_bit(RXRPC_CALL_RX_HEARD, &call->flags);
  }
 }

 if (!call || atomic_read(&call->usage) == 0) {
  if (rxrpc_to_client(sp) ||
      sp->hdr.type != 131)
   goto bad_message;
  if (sp->hdr.seq != 1)
   goto discard;
  call = rxrpc_new_incoming_call(local, rx, skb);
  if (!call)
   goto reject_packet;
  rxrpc_send_ping(call, skb);
  mutex_unlock(&call->user_mutex);
 }




 rxrpc_input_call_packet(call, skb);
 goto out;

discard:
 rxrpc_free_skb(skb, rxrpc_skb_freed);
out:
 trace_rxrpc_rx_done(0, 0);
 return 0;

wrong_security:
 trace_rxrpc_abort(0, "SEC", sp->hdr.cid, sp->hdr.callNumber, sp->hdr.seq,
     RXKADINCONSISTENCY, EBADMSG);
 skb->priority = RXKADINCONSISTENCY;
 goto post_abort;

unsupported_service:
 trace_rxrpc_abort(0, "INV", sp->hdr.cid, sp->hdr.callNumber, sp->hdr.seq,
     RX_INVALID_OPERATION, EOPNOTSUPP);
 skb->priority = RX_INVALID_OPERATION;
 goto post_abort;

reupgrade:
 trace_rxrpc_abort(0, "UPG", sp->hdr.cid, sp->hdr.callNumber, sp->hdr.seq,
     RX_PROTOCOL_ERROR, EBADMSG);
 goto protocol_error;

bad_message:
 trace_rxrpc_abort(0, "BAD", sp->hdr.cid, sp->hdr.callNumber, sp->hdr.seq,
     RX_PROTOCOL_ERROR, EBADMSG);
protocol_error:
 skb->priority = RX_PROTOCOL_ERROR;
post_abort:
 skb->mark = RXRPC_SKB_MARK_REJECT_ABORT;
reject_packet:
 trace_rxrpc_rx_done(skb->mark, skb->priority);
 rxrpc_reject_packet(local, skb);
 _leave(" [badmsg]");
 return 0;
}
