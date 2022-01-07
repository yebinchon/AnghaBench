
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct xfrm_usersa_info {int dummy; } ;
struct TYPE_4__ {scalar_t__ dev; } ;
struct TYPE_3__ {int smark; scalar_t__ extra_flags; } ;
struct xfrm_state {scalar_t__ security; scalar_t__ if_id; TYPE_2__ xso; int replay; int * replay_esn; TYPE_1__ props; int mark; scalar_t__ tfcpad; int * encap; int * calg; int * ealg; int * aalg; int * aead; scalar_t__ lastused; int * coaddr; } ;
struct sk_buff {int dummy; } ;


 int XFRMA_ALG_AEAD ;
 int XFRMA_ALG_AUTH_TRUNC ;
 int XFRMA_ALG_COMP ;
 int XFRMA_ALG_CRYPT ;
 int XFRMA_COADDR ;
 int XFRMA_ENCAP ;
 int XFRMA_IF_ID ;
 int XFRMA_LASTUSED ;
 int XFRMA_PAD ;
 int XFRMA_REPLAY_ESN_VAL ;
 int XFRMA_REPLAY_VAL ;
 int XFRMA_SA_EXTRA_FLAGS ;
 int XFRMA_TFCPAD ;
 int aead_len (int *) ;
 int copy_sec_ctx (scalar_t__,struct sk_buff*) ;
 int copy_to_user_auth (int *,struct sk_buff*) ;
 int copy_to_user_state (struct xfrm_state*,struct xfrm_usersa_info*) ;
 int copy_user_offload (TYPE_2__*,struct sk_buff*) ;
 int nla_put (struct sk_buff*,int ,int,int *) ;
 int nla_put_u32 (struct sk_buff*,int ,scalar_t__) ;
 int nla_put_u64_64bit (struct sk_buff*,int ,scalar_t__,int ) ;
 int xfrm_alg_auth_len (int *) ;
 int xfrm_alg_len (int *) ;
 int xfrm_mark_put (struct sk_buff*,int *) ;
 int xfrm_replay_state_esn_len (int *) ;
 int xfrm_smark_put (struct sk_buff*,int *) ;

__attribute__((used)) static int copy_to_user_state_extra(struct xfrm_state *x,
        struct xfrm_usersa_info *p,
        struct sk_buff *skb)
{
 int ret = 0;

 copy_to_user_state(x, p);

 if (x->props.extra_flags) {
  ret = nla_put_u32(skb, XFRMA_SA_EXTRA_FLAGS,
      x->props.extra_flags);
  if (ret)
   goto out;
 }

 if (x->coaddr) {
  ret = nla_put(skb, XFRMA_COADDR, sizeof(*x->coaddr), x->coaddr);
  if (ret)
   goto out;
 }
 if (x->lastused) {
  ret = nla_put_u64_64bit(skb, XFRMA_LASTUSED, x->lastused,
     XFRMA_PAD);
  if (ret)
   goto out;
 }
 if (x->aead) {
  ret = nla_put(skb, XFRMA_ALG_AEAD, aead_len(x->aead), x->aead);
  if (ret)
   goto out;
 }
 if (x->aalg) {
  ret = copy_to_user_auth(x->aalg, skb);
  if (!ret)
   ret = nla_put(skb, XFRMA_ALG_AUTH_TRUNC,
          xfrm_alg_auth_len(x->aalg), x->aalg);
  if (ret)
   goto out;
 }
 if (x->ealg) {
  ret = nla_put(skb, XFRMA_ALG_CRYPT, xfrm_alg_len(x->ealg), x->ealg);
  if (ret)
   goto out;
 }
 if (x->calg) {
  ret = nla_put(skb, XFRMA_ALG_COMP, sizeof(*(x->calg)), x->calg);
  if (ret)
   goto out;
 }
 if (x->encap) {
  ret = nla_put(skb, XFRMA_ENCAP, sizeof(*x->encap), x->encap);
  if (ret)
   goto out;
 }
 if (x->tfcpad) {
  ret = nla_put_u32(skb, XFRMA_TFCPAD, x->tfcpad);
  if (ret)
   goto out;
 }
 ret = xfrm_mark_put(skb, &x->mark);
 if (ret)
  goto out;

 ret = xfrm_smark_put(skb, &x->props.smark);
 if (ret)
  goto out;

 if (x->replay_esn)
  ret = nla_put(skb, XFRMA_REPLAY_ESN_VAL,
         xfrm_replay_state_esn_len(x->replay_esn),
         x->replay_esn);
 else
  ret = nla_put(skb, XFRMA_REPLAY_VAL, sizeof(x->replay),
         &x->replay);
 if (ret)
  goto out;
 if(x->xso.dev)
  ret = copy_user_offload(&x->xso, skb);
 if (ret)
  goto out;
 if (x->if_id) {
  ret = nla_put_u32(skb, XFRMA_IF_ID, x->if_id);
  if (ret)
   goto out;
 }
 if (x->security)
  ret = copy_sec_ctx(x->security, skb);
out:
 return ret;
}
