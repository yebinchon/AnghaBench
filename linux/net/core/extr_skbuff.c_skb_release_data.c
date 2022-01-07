
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skb_shared_info {int nr_frags; scalar_t__ frag_list; int * frags; int dataref; } ;
struct sk_buff {scalar_t__ nohdr; scalar_t__ cloned; } ;


 int SKB_DATAREF_SHIFT ;
 int __skb_frag_unref (int *) ;
 scalar_t__ atomic_sub_return (int,int *) ;
 int kfree_skb_list (scalar_t__) ;
 int skb_free_head (struct sk_buff*) ;
 struct skb_shared_info* skb_shinfo (struct sk_buff*) ;
 int skb_zcopy_clear (struct sk_buff*,int) ;

__attribute__((used)) static void skb_release_data(struct sk_buff *skb)
{
 struct skb_shared_info *shinfo = skb_shinfo(skb);
 int i;

 if (skb->cloned &&
     atomic_sub_return(skb->nohdr ? (1 << SKB_DATAREF_SHIFT) + 1 : 1,
         &shinfo->dataref))
  return;

 for (i = 0; i < shinfo->nr_frags; i++)
  __skb_frag_unref(&shinfo->frags[i]);

 if (shinfo->frag_list)
  kfree_skb_list(shinfo->frag_list);

 skb_zcopy_clear(skb, 1);
 skb_free_head(skb);
}
