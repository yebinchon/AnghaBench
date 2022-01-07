
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wdrr_bucket {struct sk_buff* tail; struct sk_buff* head; } ;
struct sk_buff {struct sk_buff* next; } ;



__attribute__((used)) static void bucket_add(struct wdrr_bucket *bucket, struct sk_buff *skb)
{
 if (bucket->head == ((void*)0))
  bucket->head = skb;
 else
  bucket->tail->next = skb;
 bucket->tail = skb;
 skb->next = ((void*)0);
}
