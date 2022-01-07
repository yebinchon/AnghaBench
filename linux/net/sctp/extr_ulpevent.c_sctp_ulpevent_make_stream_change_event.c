
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct sctp_ulpevent {int dummy; } ;
struct sctp_stream_change_event {int strchange_length; void* strchange_outstrms; void* strchange_instrms; int strchange_assoc_id; int strchange_flags; int strchange_type; } ;
struct sctp_association {int dummy; } ;
typedef int gfp_t ;
typedef void* __u32 ;
typedef int __u16 ;


 int MSG_NOTIFICATION ;
 int SCTP_STREAM_CHANGE_EVENT ;
 int sctp_assoc2id (struct sctp_association const*) ;
 struct sk_buff* sctp_event2skb (struct sctp_ulpevent*) ;
 struct sctp_ulpevent* sctp_ulpevent_new (int,int ,int ) ;
 int sctp_ulpevent_set_owner (struct sctp_ulpevent*,struct sctp_association const*) ;
 struct sctp_stream_change_event* skb_put (struct sk_buff*,int) ;

struct sctp_ulpevent *sctp_ulpevent_make_stream_change_event(
 const struct sctp_association *asoc, __u16 flags,
 __u32 strchange_instrms, __u32 strchange_outstrms, gfp_t gfp)
{
 struct sctp_stream_change_event *schange;
 struct sctp_ulpevent *event;
 struct sk_buff *skb;

 event = sctp_ulpevent_new(sizeof(struct sctp_stream_change_event),
      MSG_NOTIFICATION, gfp);
 if (!event)
  return ((void*)0);

 skb = sctp_event2skb(event);
 schange = skb_put(skb, sizeof(struct sctp_stream_change_event));

 schange->strchange_type = SCTP_STREAM_CHANGE_EVENT;
 schange->strchange_flags = flags;
 schange->strchange_length = sizeof(struct sctp_stream_change_event);
 sctp_ulpevent_set_owner(event, asoc);
 schange->strchange_assoc_id = sctp_assoc2id(asoc);
 schange->strchange_instrms = strchange_instrms;
 schange->strchange_outstrms = strchange_outstrms;

 return event;
}
