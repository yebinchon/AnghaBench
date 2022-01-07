
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef union sctp_addr {int dummy; } sctp_addr ;
struct sockaddr_storage {int dummy; } ;
struct sk_buff {int dummy; } ;
struct sctp_ulpevent {int dummy; } ;
struct sctp_paddr_change {int spc_length; int spc_state; int spc_error; int spc_aaddr; int spc_assoc_id; scalar_t__ spc_flags; int spc_type; } ;
struct TYPE_4__ {TYPE_2__* sk; } ;
struct sctp_association {TYPE_1__ base; } ;
typedef int gfp_t ;
struct TYPE_6__ {int (* addr_to_user ) (int ,union sctp_addr*) ;} ;
struct TYPE_5__ {int sk_family; } ;


 int MSG_NOTIFICATION ;
 int SCTP_PEER_ADDR_CHANGE ;
 int memcpy (int *,struct sockaddr_storage const*,int) ;
 int sctp_assoc2id (struct sctp_association const*) ;
 struct sk_buff* sctp_event2skb (struct sctp_ulpevent*) ;
 TYPE_3__* sctp_get_pf_specific (int ) ;
 int sctp_sk (TYPE_2__*) ;
 struct sctp_ulpevent* sctp_ulpevent_new (int,int ,int ) ;
 int sctp_ulpevent_set_owner (struct sctp_ulpevent*,struct sctp_association const*) ;
 struct sctp_paddr_change* skb_put (struct sk_buff*,int) ;
 int stub1 (int ,union sctp_addr*) ;

struct sctp_ulpevent *sctp_ulpevent_make_peer_addr_change(
 const struct sctp_association *asoc,
 const struct sockaddr_storage *aaddr,
 int flags, int state, int error, gfp_t gfp)
{
 struct sctp_ulpevent *event;
 struct sctp_paddr_change *spc;
 struct sk_buff *skb;

 event = sctp_ulpevent_new(sizeof(struct sctp_paddr_change),
      MSG_NOTIFICATION, gfp);
 if (!event)
  goto fail;

 skb = sctp_event2skb(event);
 spc = skb_put(skb, sizeof(struct sctp_paddr_change));
 spc->spc_type = SCTP_PEER_ADDR_CHANGE;
 spc->spc_length = sizeof(struct sctp_paddr_change);







 spc->spc_flags = 0;
 spc->spc_state = state;
 spc->spc_error = error;
 sctp_ulpevent_set_owner(event, asoc);
 spc->spc_assoc_id = sctp_assoc2id(asoc);
 memcpy(&spc->spc_aaddr, aaddr, sizeof(struct sockaddr_storage));


 sctp_get_pf_specific(asoc->base.sk->sk_family)->addr_to_user(
     sctp_sk(asoc->base.sk),
     (union sctp_addr *)&spc->spc_aaddr);

 return event;

fail:
 return ((void*)0);
}
