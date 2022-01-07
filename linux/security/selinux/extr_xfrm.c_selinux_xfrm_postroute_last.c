
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct xfrm_state {int dummy; } ;
struct sk_buff {int dummy; } ;
struct dst_entry {struct xfrm_state* xfrm; } ;
struct common_audit_data {int dummy; } ;


 int ASSOCIATION__SENDTO ;



 int SECCLASS_ASSOCIATION ;
 int SECINITSID_UNLABELED ;
 int avc_has_perm (int *,int ,int ,int ,int ,struct common_audit_data*) ;
 scalar_t__ selinux_authorizable_xfrm (struct xfrm_state*) ;
 int selinux_state ;
 struct dst_entry* skb_dst (struct sk_buff*) ;
 struct dst_entry* xfrm_dst_child (struct dst_entry*) ;

int selinux_xfrm_postroute_last(u32 sk_sid, struct sk_buff *skb,
    struct common_audit_data *ad, u8 proto)
{
 struct dst_entry *dst;

 switch (proto) {
 case 130:
 case 128:
 case 129:



  return 0;
 default:
  break;
 }

 dst = skb_dst(skb);
 if (dst) {
  struct dst_entry *iter;

  for (iter = dst; iter != ((void*)0); iter = xfrm_dst_child(iter)) {
   struct xfrm_state *x = iter->xfrm;

   if (x && selinux_authorizable_xfrm(x))
    return 0;
  }
 }




 return avc_has_perm(&selinux_state, sk_sid, SECINITSID_UNLABELED,
       SECCLASS_ASSOCIATION, ASSOCIATION__SENDTO, ad);
}
