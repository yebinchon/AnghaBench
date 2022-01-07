
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff_head {int dummy; } ;
struct sctp_ulpq {int dummy; } ;
struct sctp_ulpevent {int dummy; } ;


 int __skb_queue_tail (struct sk_buff_head*,int ) ;
 int sctp_enqueue_event (struct sctp_ulpq*,struct sk_buff_head*) ;
 int sctp_event2skb (struct sctp_ulpevent*) ;
 int skb_queue_head_init (struct sk_buff_head*) ;

__attribute__((used)) static int do_sctp_enqueue_event(struct sctp_ulpq *ulpq,
     struct sctp_ulpevent *event)
{
 struct sk_buff_head temp;

 skb_queue_head_init(&temp);
 __skb_queue_tail(&temp, sctp_event2skb(event));
 return sctp_enqueue_event(ulpq, &temp);
}
