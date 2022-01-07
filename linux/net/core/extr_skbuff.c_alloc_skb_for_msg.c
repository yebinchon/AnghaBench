
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int * destructor; int truesize; int len; int data_len; } ;
struct TYPE_2__ {struct sk_buff* frag_list; } ;


 int GFP_ATOMIC ;
 int __copy_skb_header (struct sk_buff*,struct sk_buff*) ;
 struct sk_buff* alloc_skb (int ,int ) ;
 TYPE_1__* skb_shinfo (struct sk_buff*) ;

struct sk_buff *alloc_skb_for_msg(struct sk_buff *first)
{
 struct sk_buff *n;

 n = alloc_skb(0, GFP_ATOMIC);
 if (!n)
  return ((void*)0);

 n->len = first->len;
 n->data_len = first->len;
 n->truesize = first->truesize;

 skb_shinfo(n)->frag_list = first;

 __copy_skb_header(n, first);
 n->destructor = ((void*)0);

 return n;
}
