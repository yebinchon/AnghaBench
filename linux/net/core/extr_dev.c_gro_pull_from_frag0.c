
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct skb_shared_info {int nr_frags; int * frags; } ;
struct sk_buff {int end; int tail; int data_len; } ;
struct TYPE_2__ {int frag0; } ;


 int BUG_ON (int) ;
 TYPE_1__* NAPI_GRO_CB (struct sk_buff*) ;
 int memcpy (int ,int ,int) ;
 int memmove (int *,int *,int) ;
 int skb_frag_off_add (int *,int) ;
 int skb_frag_size (int *) ;
 int skb_frag_size_sub (int *,int) ;
 int skb_frag_unref (struct sk_buff*,int ) ;
 struct skb_shared_info* skb_shinfo (struct sk_buff*) ;
 int skb_tail_pointer (struct sk_buff*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void gro_pull_from_frag0(struct sk_buff *skb, int grow)
{
 struct skb_shared_info *pinfo = skb_shinfo(skb);

 BUG_ON(skb->end - skb->tail < grow);

 memcpy(skb_tail_pointer(skb), NAPI_GRO_CB(skb)->frag0, grow);

 skb->data_len -= grow;
 skb->tail += grow;

 skb_frag_off_add(&pinfo->frags[0], grow);
 skb_frag_size_sub(&pinfo->frags[0], grow);

 if (unlikely(!skb_frag_size(&pinfo->frags[0]))) {
  skb_frag_unref(skb, 0);
  memmove(pinfo->frags, pinfo->frags + 1,
   --pinfo->nr_frags * sizeof(pinfo->frags[0]));
 }
}
