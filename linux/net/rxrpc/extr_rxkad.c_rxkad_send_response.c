
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int whdr ;
typedef int u32 ;
struct rxrpc_wire_header {void* serial; int serviceId; int securityIndex; int flags; int type; void* cid; void* epoch; } ;
struct rxrpc_host_header {int serviceId; int securityIndex; int cid; int epoch; } ;
struct TYPE_8__ {TYPE_3__* peer; TYPE_2__* local; } ;
struct rxrpc_connection {TYPE_4__ params; int debug_id; int serial; int out_clientflag; } ;
struct rxkad_response {void* serial; int serviceId; int securityIndex; int flags; int type; void* cid; void* epoch; } ;
struct rxkad_key {int ticket_len; scalar_t__ ticket; } ;
struct msghdr {scalar_t__ msg_flags; scalar_t__ msg_controllen; int * msg_control; int msg_namelen; int * msg_name; } ;
struct kvec {int iov_len; struct rxrpc_wire_header* iov_base; } ;
struct TYPE_5__ {int transport_len; int transport; } ;
struct TYPE_7__ {int last_tx_at; TYPE_1__ srx; } ;
struct TYPE_6__ {int socket; } ;


 int EAGAIN ;
 int RXRPC_PACKET_TYPE_RESPONSE ;
 int _enter (char*) ;
 int _leave (char*) ;
 int _proto (char*,int ) ;
 int atomic_inc_return (int *) ;
 void* htonl (int ) ;
 int htons (int ) ;
 int kernel_sendmsg (int ,struct msghdr*,struct kvec*,int,size_t) ;
 int ktime_get_seconds () ;
 int memset (struct rxrpc_wire_header*,int ,int) ;
 int rxrpc_tx_point_rxkad_response ;
 int trace_rxrpc_tx_fail (int ,int ,int,int ) ;

__attribute__((used)) static int rxkad_send_response(struct rxrpc_connection *conn,
          struct rxrpc_host_header *hdr,
          struct rxkad_response *resp,
          const struct rxkad_key *s2)
{
 struct rxrpc_wire_header whdr;
 struct msghdr msg;
 struct kvec iov[3];
 size_t len;
 u32 serial;
 int ret;

 _enter("");

 msg.msg_name = &conn->params.peer->srx.transport;
 msg.msg_namelen = conn->params.peer->srx.transport_len;
 msg.msg_control = ((void*)0);
 msg.msg_controllen = 0;
 msg.msg_flags = 0;

 memset(&whdr, 0, sizeof(whdr));
 whdr.epoch = htonl(hdr->epoch);
 whdr.cid = htonl(hdr->cid);
 whdr.type = RXRPC_PACKET_TYPE_RESPONSE;
 whdr.flags = conn->out_clientflag;
 whdr.securityIndex = hdr->securityIndex;
 whdr.serviceId = htons(hdr->serviceId);

 iov[0].iov_base = &whdr;
 iov[0].iov_len = sizeof(whdr);
 iov[1].iov_base = resp;
 iov[1].iov_len = sizeof(*resp);
 iov[2].iov_base = (void *)s2->ticket;
 iov[2].iov_len = s2->ticket_len;

 len = iov[0].iov_len + iov[1].iov_len + iov[2].iov_len;

 serial = atomic_inc_return(&conn->serial);
 whdr.serial = htonl(serial);
 _proto("Tx RESPONSE %%%u", serial);

 ret = kernel_sendmsg(conn->params.local->socket, &msg, iov, 3, len);
 if (ret < 0) {
  trace_rxrpc_tx_fail(conn->debug_id, serial, ret,
        rxrpc_tx_point_rxkad_response);
  return -EAGAIN;
 }

 conn->params.peer->last_tx_at = ktime_get_seconds();
 _leave(" = 0");
 return 0;
}
