
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct sctp_ulpevent {struct sctp_association* asoc; int rmem_len; struct sctp_chunk* chunk; } ;
struct sctp_chunk {TYPE_1__* head_skb; } ;
struct TYPE_4__ {scalar_t__ sk; } ;
struct sctp_association {TYPE_2__ base; int rmem_alloc; } ;
struct TYPE_3__ {scalar_t__ sk; } ;


 int atomic_add (int ,int *) ;
 int sctp_association_hold (struct sctp_association*) ;
 struct sk_buff* sctp_event2skb (struct sctp_ulpevent*) ;
 int sctp_skb_set_owner_r (struct sk_buff*,scalar_t__) ;

__attribute__((used)) static inline void sctp_ulpevent_set_owner(struct sctp_ulpevent *event,
        const struct sctp_association *asoc)
{
 struct sctp_chunk *chunk = event->chunk;
 struct sk_buff *skb;




 sctp_association_hold((struct sctp_association *)asoc);
 skb = sctp_event2skb(event);
 event->asoc = (struct sctp_association *)asoc;
 atomic_add(event->rmem_len, &event->asoc->rmem_alloc);
 sctp_skb_set_owner_r(skb, asoc->base.sk);
 if (chunk && chunk->head_skb && !chunk->head_skb->sk)
  chunk->head_skb->sk = asoc->base.sk;
}
