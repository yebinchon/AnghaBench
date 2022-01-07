
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct sctp_ulpevent {int dummy; } ;
struct sctp_sender_dry_event {int sender_dry_length; int sender_dry_assoc_id; scalar_t__ sender_dry_flags; int sender_dry_type; } ;
struct sctp_association {int dummy; } ;
typedef int gfp_t ;


 int MSG_NOTIFICATION ;
 int SCTP_SENDER_DRY_EVENT ;
 int sctp_assoc2id (struct sctp_association const*) ;
 struct sk_buff* sctp_event2skb (struct sctp_ulpevent*) ;
 struct sctp_ulpevent* sctp_ulpevent_new (int,int ,int ) ;
 int sctp_ulpevent_set_owner (struct sctp_ulpevent*,struct sctp_association const*) ;
 struct sctp_sender_dry_event* skb_put (struct sk_buff*,int) ;

struct sctp_ulpevent *sctp_ulpevent_make_sender_dry_event(
 const struct sctp_association *asoc, gfp_t gfp)
{
 struct sctp_ulpevent *event;
 struct sctp_sender_dry_event *sdry;
 struct sk_buff *skb;

 event = sctp_ulpevent_new(sizeof(struct sctp_sender_dry_event),
      MSG_NOTIFICATION, gfp);
 if (!event)
  return ((void*)0);

 skb = sctp_event2skb(event);
 sdry = skb_put(skb, sizeof(struct sctp_sender_dry_event));

 sdry->sender_dry_type = SCTP_SENDER_DRY_EVENT;
 sdry->sender_dry_flags = 0;
 sdry->sender_dry_length = sizeof(struct sctp_sender_dry_event);
 sctp_ulpevent_set_owner(event, asoc);
 sdry->sender_dry_assoc_id = sctp_assoc2id(asoc);

 return event;
}
