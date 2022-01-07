
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff_head {int dummy; } ;
struct sk_buff {int * next; } ;


 struct sk_buff* __skb_dequeue (struct sk_buff_head*) ;
 int __skb_queue_head_init (struct sk_buff_head*) ;
 int __skb_queue_purge (struct sk_buff_head*) ;
 int __skb_queue_tail (struct sk_buff_head*,struct sk_buff*) ;
 int pr_warn (char*) ;
 int skb_queue_len (struct sk_buff_head*) ;
 scalar_t__ tipc_buf_append (struct sk_buff**,struct sk_buff**) ;

bool tipc_msg_assemble(struct sk_buff_head *list)
{
 struct sk_buff *skb, *tmp = ((void*)0);

 if (skb_queue_len(list) == 1)
  return 1;

 while ((skb = __skb_dequeue(list))) {
  skb->next = ((void*)0);
  if (tipc_buf_append(&tmp, &skb)) {
   __skb_queue_tail(list, skb);
   return 1;
  }
  if (!tmp)
   break;
 }
 __skb_queue_purge(list);
 __skb_queue_head_init(list);
 pr_warn("Failed do assemble buffer\n");
 return 0;
}
