
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int tail; int end; int len; scalar_t__ data_len; struct sk_buff* next; } ;
typedef int skb_frag_t ;
struct TYPE_2__ {int nr_frags; int * frags; struct sk_buff* frag_list; } ;


 int BUG_ON (int ) ;
 int GFP_ATOMIC ;
 int kfree_skb (struct sk_buff*) ;
 scalar_t__ pskb_expand_head (struct sk_buff*,int ,int,int ) ;
 int pskb_pull (struct sk_buff*,int) ;
 struct sk_buff* skb_clone (struct sk_buff*,int ) ;
 scalar_t__ skb_cloned (struct sk_buff*) ;
 int skb_copy_bits (struct sk_buff*,int ,void*,int) ;
 int skb_frag_off_add (int *,int) ;
 int skb_frag_size (int *) ;
 int skb_frag_size_sub (int *,int) ;
 int skb_frag_unref (struct sk_buff*,int) ;
 int skb_has_frag_list (struct sk_buff*) ;
 int skb_headlen (struct sk_buff*) ;
 scalar_t__ skb_shared (struct sk_buff*) ;
 TYPE_1__* skb_shinfo (struct sk_buff*) ;
 void* skb_tail_pointer (struct sk_buff*) ;
 int skb_zcopy_clear (struct sk_buff*,int) ;

void *__pskb_pull_tail(struct sk_buff *skb, int delta)
{




 int i, k, eat = (skb->tail + delta) - skb->end;

 if (eat > 0 || skb_cloned(skb)) {
  if (pskb_expand_head(skb, 0, eat > 0 ? eat + 128 : 0,
         GFP_ATOMIC))
   return ((void*)0);
 }

 BUG_ON(skb_copy_bits(skb, skb_headlen(skb),
        skb_tail_pointer(skb), delta));




 if (!skb_has_frag_list(skb))
  goto pull_pages;


 eat = delta;
 for (i = 0; i < skb_shinfo(skb)->nr_frags; i++) {
  int size = skb_frag_size(&skb_shinfo(skb)->frags[i]);

  if (size >= eat)
   goto pull_pages;
  eat -= size;
 }
 if (eat) {
  struct sk_buff *list = skb_shinfo(skb)->frag_list;
  struct sk_buff *clone = ((void*)0);
  struct sk_buff *insp = ((void*)0);

  do {
   if (list->len <= eat) {

    eat -= list->len;
    list = list->next;
    insp = list;
   } else {


    if (skb_shared(list)) {

     clone = skb_clone(list, GFP_ATOMIC);
     if (!clone)
      return ((void*)0);
     insp = list->next;
     list = clone;
    } else {


     insp = list;
    }
    if (!pskb_pull(list, eat)) {
     kfree_skb(clone);
     return ((void*)0);
    }
    break;
   }
  } while (eat);


  while ((list = skb_shinfo(skb)->frag_list) != insp) {
   skb_shinfo(skb)->frag_list = list->next;
   kfree_skb(list);
  }

  if (clone) {
   clone->next = list;
   skb_shinfo(skb)->frag_list = clone;
  }
 }


pull_pages:
 eat = delta;
 k = 0;
 for (i = 0; i < skb_shinfo(skb)->nr_frags; i++) {
  int size = skb_frag_size(&skb_shinfo(skb)->frags[i]);

  if (size <= eat) {
   skb_frag_unref(skb, i);
   eat -= size;
  } else {
   skb_frag_t *frag = &skb_shinfo(skb)->frags[k];

   *frag = skb_shinfo(skb)->frags[i];
   if (eat) {
    skb_frag_off_add(frag, eat);
    skb_frag_size_sub(frag, eat);
    if (!i)
     goto end;
    eat = 0;
   }
   k++;
  }
 }
 skb_shinfo(skb)->nr_frags = k;

end:
 skb->tail += delta;
 skb->data_len -= delta;

 if (!skb->data_len)
  skb_zcopy_clear(skb, 0);

 return skb_tail_pointer(skb);
}
