
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct sctp_ulpevent {int dummy; } ;
struct TYPE_2__ {int adaptation_ind; } ;
struct sctp_association {TYPE_1__ peer; } ;
struct sctp_adaptation_event {int sai_length; int sai_assoc_id; int sai_adaptation_ind; scalar_t__ sai_flags; int sai_type; } ;
typedef int gfp_t ;


 int MSG_NOTIFICATION ;
 int SCTP_ADAPTATION_INDICATION ;
 int sctp_assoc2id (struct sctp_association const*) ;
 struct sk_buff* sctp_event2skb (struct sctp_ulpevent*) ;
 struct sctp_ulpevent* sctp_ulpevent_new (int,int ,int ) ;
 int sctp_ulpevent_set_owner (struct sctp_ulpevent*,struct sctp_association const*) ;
 struct sctp_adaptation_event* skb_put (struct sk_buff*,int) ;

struct sctp_ulpevent *sctp_ulpevent_make_adaptation_indication(
 const struct sctp_association *asoc, gfp_t gfp)
{
 struct sctp_ulpevent *event;
 struct sctp_adaptation_event *sai;
 struct sk_buff *skb;

 event = sctp_ulpevent_new(sizeof(struct sctp_adaptation_event),
      MSG_NOTIFICATION, gfp);
 if (!event)
  goto fail;

 skb = sctp_event2skb(event);
 sai = skb_put(skb, sizeof(struct sctp_adaptation_event));

 sai->sai_type = SCTP_ADAPTATION_INDICATION;
 sai->sai_flags = 0;
 sai->sai_length = sizeof(struct sctp_adaptation_event);
 sai->sai_adaptation_ind = asoc->peer.adaptation_ind;
 sctp_ulpevent_set_owner(event, asoc);
 sai->sai_assoc_id = sctp_assoc2id(asoc);

 return event;

fail:
 return ((void*)0);
}
