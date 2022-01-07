
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_6__ {scalar_t__ from; scalar_t__ to; } ;
struct rxrpc_sock {TYPE_2__ service_upgrade; } ;
struct TYPE_5__ {int cid; scalar_t__ serviceId; scalar_t__ userStatus; int securityIndex; int epoch; } ;
struct rxrpc_skb_priv {TYPE_1__ hdr; } ;
struct TYPE_8__ {int cid; int epoch; } ;
struct TYPE_7__ {scalar_t__ service_id; int peer; } ;
struct rxrpc_connection {scalar_t__ service_id; TYPE_4__ proto; int debug_id; TYPE_3__ params; int state; int security_ix; scalar_t__ out_clientflag; } ;


 int RXRPC_CIDMASK ;
 int RXRPC_CONN_SERVICE ;
 int RXRPC_CONN_SERVICE_UNSECURED ;
 scalar_t__ RXRPC_USERSTATUS_SERVICE_UPGRADE ;
 int _enter (char*) ;
 int _net (char*,int ,int) ;
 int rxrpc_publish_service_conn (int ,struct rxrpc_connection*) ;
 struct rxrpc_skb_priv* rxrpc_skb (struct sk_buff*) ;

void rxrpc_new_incoming_connection(struct rxrpc_sock *rx,
       struct rxrpc_connection *conn,
       struct sk_buff *skb)
{
 struct rxrpc_skb_priv *sp = rxrpc_skb(skb);

 _enter("");

 conn->proto.epoch = sp->hdr.epoch;
 conn->proto.cid = sp->hdr.cid & RXRPC_CIDMASK;
 conn->params.service_id = sp->hdr.serviceId;
 conn->service_id = sp->hdr.serviceId;
 conn->security_ix = sp->hdr.securityIndex;
 conn->out_clientflag = 0;
 if (conn->security_ix)
  conn->state = RXRPC_CONN_SERVICE_UNSECURED;
 else
  conn->state = RXRPC_CONN_SERVICE;





 if (sp->hdr.userStatus == RXRPC_USERSTATUS_SERVICE_UPGRADE &&
     conn->service_id == rx->service_upgrade.from)
  conn->service_id = rx->service_upgrade.to;


 rxrpc_publish_service_conn(conn->params.peer, conn);

 _net("CONNECTION new %d {%x}", conn->debug_id, conn->proto.cid);
}
