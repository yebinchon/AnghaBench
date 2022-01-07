
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {unsigned char* head; scalar_t__ head_frag; } ;


 int kfree (unsigned char*) ;
 int skb_free_frag (unsigned char*) ;

__attribute__((used)) static void skb_free_head(struct sk_buff *skb)
{
 unsigned char *head = skb->head;

 if (skb->head_frag)
  skb_free_frag(head);
 else
  kfree(head);
}
