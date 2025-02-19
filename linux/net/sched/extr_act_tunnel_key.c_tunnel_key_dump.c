
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int tm ;
struct tcf_tunnel_key_params {scalar_t__ tcft_action; TYPE_2__* tcft_enc_metadata; } ;
struct tcf_tunnel_key {int tcf_lock; int tcf_tm; int tcf_action; int params; int tcf_bindcnt; int tcf_refcnt; int tcf_index; } ;
struct tcf_t {int dummy; } ;
struct tc_tunnel_key {scalar_t__ t_action; int action; int bindcnt; int refcnt; int index; } ;
struct tc_action {int dummy; } ;
struct sk_buff {int len; } ;
struct ip_tunnel_key {int tun_flags; int tos; int ttl; scalar_t__ tp_dst; int tun_id; } ;
struct ip_tunnel_info {struct ip_tunnel_key key; } ;
typedef int opt ;
typedef int __be32 ;
struct TYPE_3__ {struct ip_tunnel_info tun_info; } ;
struct TYPE_4__ {TYPE_1__ u; } ;


 scalar_t__ TCA_TUNNEL_KEY_ACT_SET ;
 int TCA_TUNNEL_KEY_ENC_DST_PORT ;
 int TCA_TUNNEL_KEY_ENC_KEY_ID ;
 int TCA_TUNNEL_KEY_ENC_TOS ;
 int TCA_TUNNEL_KEY_ENC_TTL ;
 int TCA_TUNNEL_KEY_NO_CSUM ;
 int TCA_TUNNEL_KEY_PAD ;
 int TCA_TUNNEL_KEY_PARMS ;
 int TCA_TUNNEL_KEY_TM ;
 int TUNNEL_CSUM ;
 int TUNNEL_KEY ;
 int atomic_read (int *) ;
 int lockdep_is_held (int *) ;
 scalar_t__ nla_put (struct sk_buff*,int ,int,struct tc_tunnel_key*) ;
 scalar_t__ nla_put_64bit (struct sk_buff*,int ,int,struct tcf_t*,int ) ;
 scalar_t__ nla_put_be16 (struct sk_buff*,int ,scalar_t__) ;
 scalar_t__ nla_put_be32 (struct sk_buff*,int ,int ) ;
 scalar_t__ nla_put_u8 (struct sk_buff*,int ,int) ;
 int nlmsg_trim (struct sk_buff*,unsigned char*) ;
 struct tcf_tunnel_key_params* rcu_dereference_protected (int ,int ) ;
 int refcount_read (int *) ;
 unsigned char* skb_tail_pointer (struct sk_buff*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int tcf_tm_dump (struct tcf_t*,int *) ;
 struct tcf_tunnel_key* to_tunnel_key (struct tc_action*) ;
 int tunnel_id_to_key32 (int ) ;
 scalar_t__ tunnel_key_dump_addresses (struct sk_buff*,struct ip_tunnel_info*) ;
 scalar_t__ tunnel_key_opts_dump (struct sk_buff*,struct ip_tunnel_info*) ;

__attribute__((used)) static int tunnel_key_dump(struct sk_buff *skb, struct tc_action *a,
      int bind, int ref)
{
 unsigned char *b = skb_tail_pointer(skb);
 struct tcf_tunnel_key *t = to_tunnel_key(a);
 struct tcf_tunnel_key_params *params;
 struct tc_tunnel_key opt = {
  .index = t->tcf_index,
  .refcnt = refcount_read(&t->tcf_refcnt) - ref,
  .bindcnt = atomic_read(&t->tcf_bindcnt) - bind,
 };
 struct tcf_t tm;

 spin_lock_bh(&t->tcf_lock);
 params = rcu_dereference_protected(t->params,
        lockdep_is_held(&t->tcf_lock));
 opt.action = t->tcf_action;
 opt.t_action = params->tcft_action;

 if (nla_put(skb, TCA_TUNNEL_KEY_PARMS, sizeof(opt), &opt))
  goto nla_put_failure;

 if (params->tcft_action == TCA_TUNNEL_KEY_ACT_SET) {
  struct ip_tunnel_info *info =
   &params->tcft_enc_metadata->u.tun_info;
  struct ip_tunnel_key *key = &info->key;
  __be32 key_id = tunnel_id_to_key32(key->tun_id);

  if (((key->tun_flags & TUNNEL_KEY) &&
       nla_put_be32(skb, TCA_TUNNEL_KEY_ENC_KEY_ID, key_id)) ||
      tunnel_key_dump_addresses(skb,
           &params->tcft_enc_metadata->u.tun_info) ||
      (key->tp_dst &&
        nla_put_be16(skb, TCA_TUNNEL_KEY_ENC_DST_PORT,
       key->tp_dst)) ||
      nla_put_u8(skb, TCA_TUNNEL_KEY_NO_CSUM,
          !(key->tun_flags & TUNNEL_CSUM)) ||
      tunnel_key_opts_dump(skb, info))
   goto nla_put_failure;

  if (key->tos && nla_put_u8(skb, TCA_TUNNEL_KEY_ENC_TOS, key->tos))
   goto nla_put_failure;

  if (key->ttl && nla_put_u8(skb, TCA_TUNNEL_KEY_ENC_TTL, key->ttl))
   goto nla_put_failure;
 }

 tcf_tm_dump(&tm, &t->tcf_tm);
 if (nla_put_64bit(skb, TCA_TUNNEL_KEY_TM, sizeof(tm),
     &tm, TCA_TUNNEL_KEY_PAD))
  goto nla_put_failure;
 spin_unlock_bh(&t->tcf_lock);

 return skb->len;

nla_put_failure:
 spin_unlock_bh(&t->tcf_lock);
 nlmsg_trim(skb, b);
 return -1;
}
