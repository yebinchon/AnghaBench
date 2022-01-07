
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sk_buff {TYPE_1__* sk; scalar_t__ truesize; scalar_t__ len; int data_len; struct sk_buff* next; } ;
struct TYPE_6__ {struct sk_buff* last; } ;
struct TYPE_5__ {struct sk_buff* frag_list; } ;
struct TYPE_4__ {int sk_wmem_alloc; } ;


 TYPE_3__* SCTP_OUTPUT_CB (struct sk_buff*) ;
 int __skb_header_release (struct sk_buff*) ;
 int refcount_add (scalar_t__,int *) ;
 TYPE_2__* skb_shinfo (struct sk_buff*) ;

__attribute__((used)) static void sctp_packet_gso_append(struct sk_buff *head, struct sk_buff *skb)
{
 if (SCTP_OUTPUT_CB(head)->last == head)
  skb_shinfo(head)->frag_list = skb;
 else
  SCTP_OUTPUT_CB(head)->last->next = skb;
 SCTP_OUTPUT_CB(head)->last = skb;

 head->truesize += skb->truesize;
 head->data_len += skb->len;
 head->len += skb->len;
 refcount_add(skb->truesize, &head->sk->sk_wmem_alloc);

 __skb_header_release(skb);
}
