
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sockaddr_storage {int dummy; } ;
struct sctp_ulpevent {int dummy; } ;
struct sctp_transport {TYPE_1__* af_specific; int ipaddr; int state; int cwnd; } ;
struct TYPE_6__ {TYPE_2__* si; } ;
struct sctp_association {int ulpq; TYPE_3__ stream; int pathmtu; } ;
typedef int sctp_sn_error_t ;
typedef enum sctp_transport_cmd { ____Placeholder_sctp_transport_cmd } sctp_transport_cmd ;
struct TYPE_5__ {int (* enqueue_event ) (int *,struct sctp_ulpevent*) ;} ;
struct TYPE_4__ {int sockaddr_len; } ;


 int GFP_ATOMIC ;
 int SCTP_ACTIVE ;
 int SCTP_ADDR_AVAILABLE ;
 int SCTP_ADDR_CONFIRMED ;
 int SCTP_ADDR_UNREACHABLE ;
 int SCTP_HEARTBEAT_SUCCESS ;
 int SCTP_INACTIVE ;
 int SCTP_PF ;



 int SCTP_UNCONFIRMED ;
 int memcpy (struct sockaddr_storage*,int *,int ) ;
 int memset (struct sockaddr_storage*,int ,int) ;
 int sctp_select_active_and_retran_path (struct sctp_association*) ;
 int sctp_transport_dst_release (struct sctp_transport*) ;
 struct sctp_ulpevent* sctp_ulpevent_make_peer_addr_change (struct sctp_association*,struct sockaddr_storage*,int ,int,int ,int ) ;
 int stub1 (int *,struct sctp_ulpevent*) ;

void sctp_assoc_control_transport(struct sctp_association *asoc,
      struct sctp_transport *transport,
      enum sctp_transport_cmd command,
      sctp_sn_error_t error)
{
 struct sctp_ulpevent *event;
 struct sockaddr_storage addr;
 int spc_state = 0;
 bool ulp_notify = 1;


 switch (command) {
 case 128:




  if (SCTP_UNCONFIRMED == transport->state &&
      SCTP_HEARTBEAT_SUCCESS == error)
   spc_state = SCTP_ADDR_CONFIRMED;
  else
   spc_state = SCTP_ADDR_AVAILABLE;




  if (transport->state == SCTP_PF) {
   ulp_notify = 0;
   transport->cwnd = asoc->pathmtu;
  }
  transport->state = SCTP_ACTIVE;
  break;

 case 130:




  if (transport->state != SCTP_UNCONFIRMED)
   transport->state = SCTP_INACTIVE;
  else {
   sctp_transport_dst_release(transport);
   ulp_notify = 0;
  }

  spc_state = SCTP_ADDR_UNREACHABLE;
  break;

 case 129:
  transport->state = SCTP_PF;
  ulp_notify = 0;
  break;

 default:
  return;
 }




 if (ulp_notify) {
  memset(&addr, 0, sizeof(struct sockaddr_storage));
  memcpy(&addr, &transport->ipaddr,
         transport->af_specific->sockaddr_len);

  event = sctp_ulpevent_make_peer_addr_change(asoc, &addr,
     0, spc_state, error, GFP_ATOMIC);
  if (event)
   asoc->stream.si->enqueue_event(&asoc->ulpq, event);
 }


 sctp_select_active_and_retran_path(asoc);
}
