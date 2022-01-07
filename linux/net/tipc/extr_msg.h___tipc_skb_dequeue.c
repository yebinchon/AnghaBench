
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct sk_buff_head {int dummy; } ;
struct sk_buff {int dummy; } ;


 int __skb_unlink (struct sk_buff*,struct sk_buff_head*) ;
 int buf_seqno (struct sk_buff*) ;
 scalar_t__ less_eq (int ,int ) ;
 struct sk_buff* skb_peek (struct sk_buff_head*) ;

__attribute__((used)) static inline struct sk_buff *__tipc_skb_dequeue(struct sk_buff_head *list,
       u16 seqno)
{
 struct sk_buff *skb = skb_peek(list);

 if (skb && less_eq(buf_seqno(skb), seqno)) {
  __skb_unlink(skb, list);
  return skb;
 }
 return ((void*)0);
}
