
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
typedef int gfp_t ;


 int EIO ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 int WARN_ON_ONCE (int) ;
 scalar_t__ skb_copy_ubufs (struct sk_buff*,int ) ;
 scalar_t__ skb_uarg (struct sk_buff*) ;
 scalar_t__ skb_zcopy (struct sk_buff*) ;
 int skb_zcopy_set (struct sk_buff*,scalar_t__,int *) ;

__attribute__((used)) static int skb_zerocopy_clone(struct sk_buff *nskb, struct sk_buff *orig,
         gfp_t gfp_mask)
{
 if (skb_zcopy(orig)) {
  if (skb_zcopy(nskb)) {

   if (!gfp_mask) {
    WARN_ON_ONCE(1);
    return -ENOMEM;
   }
   if (skb_uarg(nskb) == skb_uarg(orig))
    return 0;
   if (skb_copy_ubufs(nskb, GFP_ATOMIC))
    return -EIO;
  }
  skb_zcopy_set(nskb, skb_uarg(orig), ((void*)0));
 }
 return 0;
}
