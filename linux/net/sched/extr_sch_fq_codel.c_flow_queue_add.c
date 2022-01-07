
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {struct sk_buff* next; } ;
struct fq_codel_flow {struct sk_buff* tail; struct sk_buff* head; } ;



__attribute__((used)) static inline void flow_queue_add(struct fq_codel_flow *flow,
      struct sk_buff *skb)
{
 if (flow->head == ((void*)0))
  flow->head = skb;
 else
  flow->tail->next = skb;
 flow->tail = skb;
 skb->next = ((void*)0);
}
