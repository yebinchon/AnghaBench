
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct sctp_ulpevent {int dummy; } ;
struct sctp_stream_reset_event {int strreset_flags; int strreset_length; int * strreset_stream_list; int strreset_assoc_id; int strreset_type; } ;
struct sctp_association {int dummy; } ;
typedef int gfp_t ;
typedef int __u16 ;
typedef int __be16 ;


 int MSG_NOTIFICATION ;
 int SCTP_STREAM_RESET_EVENT ;
 int ntohs (int ) ;
 int sctp_assoc2id (struct sctp_association const*) ;
 struct sk_buff* sctp_event2skb (struct sctp_ulpevent*) ;
 struct sctp_ulpevent* sctp_ulpevent_new (int,int ,int ) ;
 int sctp_ulpevent_set_owner (struct sctp_ulpevent*,struct sctp_association const*) ;
 struct sctp_stream_reset_event* skb_put (struct sk_buff*,int) ;

struct sctp_ulpevent *sctp_ulpevent_make_stream_reset_event(
 const struct sctp_association *asoc, __u16 flags, __u16 stream_num,
 __be16 *stream_list, gfp_t gfp)
{
 struct sctp_stream_reset_event *sreset;
 struct sctp_ulpevent *event;
 struct sk_buff *skb;
 int length, i;

 length = sizeof(struct sctp_stream_reset_event) + 2 * stream_num;
 event = sctp_ulpevent_new(length, MSG_NOTIFICATION, gfp);
 if (!event)
  return ((void*)0);

 skb = sctp_event2skb(event);
 sreset = skb_put(skb, length);

 sreset->strreset_type = SCTP_STREAM_RESET_EVENT;
 sreset->strreset_flags = flags;
 sreset->strreset_length = length;
 sctp_ulpevent_set_owner(event, asoc);
 sreset->strreset_assoc_id = sctp_assoc2id(asoc);

 for (i = 0; i < stream_num; i++)
  sreset->strreset_stream_list[i] = ntohs(stream_list[i]);

 return event;
}
