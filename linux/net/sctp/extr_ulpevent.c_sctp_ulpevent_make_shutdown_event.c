
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct sctp_ulpevent {int dummy; } ;
struct sctp_shutdown_event {int sse_length; int sse_assoc_id; scalar_t__ sse_flags; int sse_type; } ;
struct sctp_association {int dummy; } ;
typedef int gfp_t ;
typedef int __u16 ;


 int MSG_NOTIFICATION ;
 int SCTP_SHUTDOWN_EVENT ;
 int sctp_assoc2id (struct sctp_association const*) ;
 struct sk_buff* sctp_event2skb (struct sctp_ulpevent*) ;
 struct sctp_ulpevent* sctp_ulpevent_new (int,int ,int ) ;
 int sctp_ulpevent_set_owner (struct sctp_ulpevent*,struct sctp_association const*) ;
 struct sctp_shutdown_event* skb_put (struct sk_buff*,int) ;

struct sctp_ulpevent *sctp_ulpevent_make_shutdown_event(
 const struct sctp_association *asoc,
 __u16 flags, gfp_t gfp)
{
 struct sctp_ulpevent *event;
 struct sctp_shutdown_event *sse;
 struct sk_buff *skb;

 event = sctp_ulpevent_new(sizeof(struct sctp_shutdown_event),
      MSG_NOTIFICATION, gfp);
 if (!event)
  goto fail;

 skb = sctp_event2skb(event);
 sse = skb_put(skb, sizeof(struct sctp_shutdown_event));







 sse->sse_type = SCTP_SHUTDOWN_EVENT;







 sse->sse_flags = 0;
 sse->sse_length = sizeof(struct sctp_shutdown_event);
 sctp_ulpevent_set_owner(event, asoc);
 sse->sse_assoc_id = sctp_assoc2id(asoc);

 return event;

fail:
 return ((void*)0);
}
