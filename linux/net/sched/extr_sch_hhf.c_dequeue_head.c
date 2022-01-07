
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wdrr_bucket {struct sk_buff* head; } ;
struct sk_buff {struct sk_buff* next; } ;


 int skb_mark_not_on_list (struct sk_buff*) ;

__attribute__((used)) static struct sk_buff *dequeue_head(struct wdrr_bucket *bucket)
{
 struct sk_buff *skb = bucket->head;

 bucket->head = skb->next;
 skb_mark_not_on_list(skb);
 return skb;
}
