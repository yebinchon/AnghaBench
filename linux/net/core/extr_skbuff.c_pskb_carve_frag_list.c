
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skb_shared_info {struct sk_buff* frag_list; } ;
struct sk_buff {int len; struct sk_buff* next; } ;
typedef int gfp_t ;


 int EFAULT ;
 int ENOMEM ;
 int kfree_skb (struct sk_buff*) ;
 int pr_err (char*,int) ;
 scalar_t__ pskb_carve (struct sk_buff*,int,int ) ;
 struct sk_buff* skb_clone (struct sk_buff*,int ) ;
 scalar_t__ skb_shared (struct sk_buff*) ;

__attribute__((used)) static int pskb_carve_frag_list(struct sk_buff *skb,
    struct skb_shared_info *shinfo, int eat,
    gfp_t gfp_mask)
{
 struct sk_buff *list = shinfo->frag_list;
 struct sk_buff *clone = ((void*)0);
 struct sk_buff *insp = ((void*)0);

 do {
  if (!list) {
   pr_err("Not enough bytes to eat. Want %d\n", eat);
   return -EFAULT;
  }
  if (list->len <= eat) {

   eat -= list->len;
   list = list->next;
   insp = list;
  } else {

   if (skb_shared(list)) {
    clone = skb_clone(list, gfp_mask);
    if (!clone)
     return -ENOMEM;
    insp = list->next;
    list = clone;
   } else {

    insp = list;
   }
   if (pskb_carve(list, eat, gfp_mask) < 0) {
    kfree_skb(clone);
    return -ENOMEM;
   }
   break;
  }
 } while (eat);


 while ((list = shinfo->frag_list) != insp) {
  shinfo->frag_list = list->next;
  kfree_skb(list);
 }

 if (clone) {
  clone->next = list;
  shinfo->frag_list = clone;
 }
 return 0;
}
