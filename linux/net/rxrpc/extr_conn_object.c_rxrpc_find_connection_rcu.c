
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_28__ TYPE_9__ ;
typedef struct TYPE_27__ TYPE_8__ ;
typedef struct TYPE_26__ TYPE_7__ ;
typedef struct TYPE_25__ TYPE_6__ ;
typedef struct TYPE_24__ TYPE_5__ ;
typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;
typedef struct TYPE_19__ TYPE_14__ ;
typedef struct TYPE_18__ TYPE_13__ ;
typedef struct TYPE_17__ TYPE_12__ ;
typedef struct TYPE_16__ TYPE_11__ ;
typedef struct TYPE_15__ TYPE_10__ ;


struct TYPE_18__ {int sin6_addr; int sin6_port; } ;
struct TYPE_27__ {int s_addr; } ;
struct TYPE_28__ {TYPE_8__ sin_addr; int sin_port; } ;
struct TYPE_19__ {int family; TYPE_13__ sin6; TYPE_9__ sin; } ;
struct sockaddr_rxrpc {TYPE_14__ transport; } ;
struct sk_buff {int dummy; } ;
struct TYPE_22__ {int cid; scalar_t__ epoch; } ;
struct rxrpc_skb_priv {TYPE_3__ hdr; } ;
struct TYPE_15__ {int sin6_addr; int sin6_port; } ;
struct TYPE_25__ {int s_addr; } ;
struct TYPE_26__ {TYPE_6__ sin_addr; int sin_port; } ;
struct TYPE_16__ {TYPE_10__ sin6; TYPE_7__ sin; } ;
struct TYPE_17__ {TYPE_11__ transport; } ;
struct rxrpc_peer {TYPE_12__ srx; } ;
struct TYPE_20__ {int family; } ;
struct TYPE_21__ {TYPE_1__ transport; } ;
struct rxrpc_local {TYPE_2__ srx; } ;
struct TYPE_24__ {struct rxrpc_peer* peer; struct rxrpc_local* local; } ;
struct TYPE_23__ {scalar_t__ epoch; } ;
struct rxrpc_connection {TYPE_5__ params; TYPE_4__ proto; int usage; } ;
struct rxrpc_conn_proto {scalar_t__ epoch; int cid; } ;
struct in6_addr {int dummy; } ;




 int BUG () ;
 int RXRPC_CIDMASK ;
 int RXRPC_CIDSHIFT ;
 int _debug (char*) ;
 int _enter (char*,int) ;
 int _leave (char*,...) ;
 scalar_t__ atomic_read (int *) ;
 struct rxrpc_connection* idr_find (int *,int) ;
 int memcmp (int *,int *,int) ;
 int pr_warn_ratelimited (char*,int,int) ;
 int rxrpc_client_conn_ids ;
 scalar_t__ rxrpc_extract_addr_from_skb (struct sockaddr_rxrpc*,struct sk_buff*) ;
 struct rxrpc_connection* rxrpc_find_service_conn_rcu (struct rxrpc_peer*,struct sk_buff*) ;
 struct rxrpc_peer* rxrpc_lookup_peer_rcu (struct rxrpc_local*,struct sockaddr_rxrpc*) ;
 struct rxrpc_skb_priv* rxrpc_skb (struct sk_buff*) ;
 scalar_t__ rxrpc_to_server (struct rxrpc_skb_priv*) ;

struct rxrpc_connection *rxrpc_find_connection_rcu(struct rxrpc_local *local,
         struct sk_buff *skb,
         struct rxrpc_peer **_peer)
{
 struct rxrpc_connection *conn;
 struct rxrpc_conn_proto k;
 struct rxrpc_skb_priv *sp = rxrpc_skb(skb);
 struct sockaddr_rxrpc srx;
 struct rxrpc_peer *peer;

 _enter(",%x", sp->hdr.cid & RXRPC_CIDMASK);

 if (rxrpc_extract_addr_from_skb(&srx, skb) < 0)
  goto not_found;

 if (srx.transport.family != local->srx.transport.family &&
     (srx.transport.family == 129 &&
      local->srx.transport.family != 128)) {
  pr_warn_ratelimited("AF_RXRPC: Protocol mismatch %u not %u\n",
        srx.transport.family,
        local->srx.transport.family);
  goto not_found;
 }

 k.epoch = sp->hdr.epoch;
 k.cid = sp->hdr.cid & RXRPC_CIDMASK;

 if (rxrpc_to_server(sp)) {




  peer = rxrpc_lookup_peer_rcu(local, &srx);
  if (!peer)
   goto not_found;
  *_peer = peer;
  conn = rxrpc_find_service_conn_rcu(peer, skb);
  if (!conn || atomic_read(&conn->usage) == 0)
   goto not_found;
  _leave(" = %p", conn);
  return conn;
 } else {



  conn = idr_find(&rxrpc_client_conn_ids,
    sp->hdr.cid >> RXRPC_CIDSHIFT);
  if (!conn || atomic_read(&conn->usage) == 0) {
   _debug("no conn");
   goto not_found;
  }

  if (conn->proto.epoch != k.epoch ||
      conn->params.local != local)
   goto not_found;

  peer = conn->params.peer;
  switch (srx.transport.family) {
  case 129:
   if (peer->srx.transport.sin.sin_port !=
       srx.transport.sin.sin_port ||
       peer->srx.transport.sin.sin_addr.s_addr !=
       srx.transport.sin.sin_addr.s_addr)
    goto not_found;
   break;
  default:
   BUG();
  }

  _leave(" = %p", conn);
  return conn;
 }

not_found:
 _leave(" = NULL");
 return ((void*)0);
}
