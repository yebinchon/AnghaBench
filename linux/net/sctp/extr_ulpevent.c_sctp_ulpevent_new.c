
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int truesize; } ;
struct sctp_ulpevent {int dummy; } ;
typedef int gfp_t ;
typedef int __u16 ;


 struct sk_buff* alloc_skb (int,int ) ;
 struct sctp_ulpevent* sctp_skb2event (struct sk_buff*) ;
 int sctp_ulpevent_init (struct sctp_ulpevent*,int ,int ) ;

__attribute__((used)) static struct sctp_ulpevent *sctp_ulpevent_new(int size, __u16 msg_flags,
            gfp_t gfp)
{
 struct sctp_ulpevent *event;
 struct sk_buff *skb;

 skb = alloc_skb(size, gfp);
 if (!skb)
  goto fail;

 event = sctp_skb2event(skb);
 sctp_ulpevent_init(event, msg_flags, skb->truesize);

 return event;

fail:
 return ((void*)0);
}
