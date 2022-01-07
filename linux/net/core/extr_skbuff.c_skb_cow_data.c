
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {struct sk_buff* next; scalar_t__ sk; } ;
struct TYPE_2__ {scalar_t__ nr_frags; struct sk_buff* frag_list; } ;


 int ENOMEM ;
 int GFP_ATOMIC ;
 int * __pskb_pull_tail (struct sk_buff*,scalar_t__) ;
 int kfree_skb (struct sk_buff*) ;
 scalar_t__ pskb_expand_head (struct sk_buff*,int ,int,int ) ;
 scalar_t__ skb_cloned (struct sk_buff*) ;
 struct sk_buff* skb_copy (struct sk_buff*,int ) ;
 struct sk_buff* skb_copy_expand (struct sk_buff*,int ,int,int ) ;
 scalar_t__ skb_has_frag_list (struct sk_buff*) ;
 scalar_t__ skb_headlen (struct sk_buff*) ;
 int skb_headroom (struct sk_buff*) ;
 scalar_t__ skb_pagelen (struct sk_buff*) ;
 int skb_set_owner_w (struct sk_buff*,scalar_t__) ;
 scalar_t__ skb_shared (struct sk_buff*) ;
 TYPE_1__* skb_shinfo (struct sk_buff*) ;
 int skb_tailroom (struct sk_buff*) ;
 scalar_t__ unlikely (int ) ;

int skb_cow_data(struct sk_buff *skb, int tailbits, struct sk_buff **trailer)
{
 int copyflag;
 int elt;
 struct sk_buff *skb1, **skb_p;





 if ((skb_cloned(skb) || skb_shinfo(skb)->nr_frags) &&
     __pskb_pull_tail(skb, skb_pagelen(skb)-skb_headlen(skb)) == ((void*)0))
  return -ENOMEM;


 if (!skb_has_frag_list(skb)) {





  if (skb_tailroom(skb) < tailbits &&
      pskb_expand_head(skb, 0, tailbits-skb_tailroom(skb)+128, GFP_ATOMIC))
   return -ENOMEM;


  *trailer = skb;
  return 1;
 }



 elt = 1;
 skb_p = &skb_shinfo(skb)->frag_list;
 copyflag = 0;

 while ((skb1 = *skb_p) != ((void*)0)) {
  int ntail = 0;





  if (skb_shared(skb1))
   copyflag = 1;



  if (skb1->next == ((void*)0) && tailbits) {
   if (skb_shinfo(skb1)->nr_frags ||
       skb_has_frag_list(skb1) ||
       skb_tailroom(skb1) < tailbits)
    ntail = tailbits + 128;
  }

  if (copyflag ||
      skb_cloned(skb1) ||
      ntail ||
      skb_shinfo(skb1)->nr_frags ||
      skb_has_frag_list(skb1)) {
   struct sk_buff *skb2;


   if (ntail == 0)
    skb2 = skb_copy(skb1, GFP_ATOMIC);
   else
    skb2 = skb_copy_expand(skb1,
             skb_headroom(skb1),
             ntail,
             GFP_ATOMIC);
   if (unlikely(skb2 == ((void*)0)))
    return -ENOMEM;

   if (skb1->sk)
    skb_set_owner_w(skb2, skb1->sk);




   skb2->next = skb1->next;
   *skb_p = skb2;
   kfree_skb(skb1);
   skb1 = skb2;
  }
  elt++;
  *trailer = skb1;
  skb_p = &skb1->next;
 }

 return elt;
}
