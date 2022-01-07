
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct TYPE_2__ {int tun_flags; } ;
struct ip_tunnel_info {TYPE_1__ key; int options_len; } ;


 int EINVAL ;
 int EMSGSIZE ;
 int TCA_TUNNEL_KEY_ENC_OPTS ;
 int TUNNEL_GENEVE_OPT ;
 int nla_nest_cancel (struct sk_buff*,struct nlattr*) ;
 int nla_nest_end (struct sk_buff*,struct nlattr*) ;
 struct nlattr* nla_nest_start_noflag (struct sk_buff*,int ) ;
 int tunnel_key_geneve_opts_dump (struct sk_buff*,struct ip_tunnel_info const*) ;

__attribute__((used)) static int tunnel_key_opts_dump(struct sk_buff *skb,
    const struct ip_tunnel_info *info)
{
 struct nlattr *start;
 int err = -EINVAL;

 if (!info->options_len)
  return 0;

 start = nla_nest_start_noflag(skb, TCA_TUNNEL_KEY_ENC_OPTS);
 if (!start)
  return -EMSGSIZE;

 if (info->key.tun_flags & TUNNEL_GENEVE_OPT) {
  err = tunnel_key_geneve_opts_dump(skb, info);
  if (err)
   goto err_out;
 } else {
err_out:
  nla_nest_cancel(skb, start);
  return err;
 }

 nla_nest_end(skb, start);
 return 0;
}
