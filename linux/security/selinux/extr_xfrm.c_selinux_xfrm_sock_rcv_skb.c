
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xfrm_state {struct xfrm_sec_ctx* security; } ;
struct xfrm_sec_ctx {int ctx_sid; } ;
struct sk_buff {int dummy; } ;
struct sec_path {int len; struct xfrm_state** xvec; } ;
struct common_audit_data {int dummy; } ;


 int ASSOCIATION__RECVFROM ;
 int SECCLASS_ASSOCIATION ;
 int SECINITSID_UNLABELED ;
 int avc_has_perm (int *,int ,int ,int ,int ,struct common_audit_data*) ;
 scalar_t__ selinux_authorizable_xfrm (struct xfrm_state*) ;
 int selinux_state ;
 struct sec_path* skb_sec_path (struct sk_buff*) ;

int selinux_xfrm_sock_rcv_skb(u32 sk_sid, struct sk_buff *skb,
         struct common_audit_data *ad)
{
 int i;
 struct sec_path *sp = skb_sec_path(skb);
 u32 peer_sid = SECINITSID_UNLABELED;

 if (sp) {
  for (i = 0; i < sp->len; i++) {
   struct xfrm_state *x = sp->xvec[i];

   if (x && selinux_authorizable_xfrm(x)) {
    struct xfrm_sec_ctx *ctx = x->security;
    peer_sid = ctx->ctx_sid;
    break;
   }
  }
 }




 return avc_has_perm(&selinux_state,
       sk_sid, peer_sid,
       SECCLASS_ASSOCIATION, ASSOCIATION__RECVFROM, ad);
}
