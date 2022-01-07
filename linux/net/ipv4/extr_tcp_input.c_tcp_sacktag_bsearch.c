
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {struct rb_node* rb_node; } ;
struct sock {TYPE_1__ tcp_rtx_queue; } ;
struct sk_buff {int dummy; } ;
struct rb_node {struct rb_node* rb_right; struct rb_node* rb_left; } ;
struct TYPE_4__ {int end_seq; int seq; } ;


 TYPE_2__* TCP_SKB_CB (struct sk_buff*) ;
 scalar_t__ before (int ,int ) ;
 struct sk_buff* rb_to_skb (struct rb_node*) ;

__attribute__((used)) static struct sk_buff *tcp_sacktag_bsearch(struct sock *sk, u32 seq)
{
 struct rb_node *parent, **p = &sk->tcp_rtx_queue.rb_node;
 struct sk_buff *skb;

 while (*p) {
  parent = *p;
  skb = rb_to_skb(parent);
  if (before(seq, TCP_SKB_CB(skb)->seq)) {
   p = &parent->rb_left;
   continue;
  }
  if (!before(seq, TCP_SKB_CB(skb)->end_seq)) {
   p = &parent->rb_right;
   continue;
  }
  return skb;
 }
 return ((void*)0);
}
