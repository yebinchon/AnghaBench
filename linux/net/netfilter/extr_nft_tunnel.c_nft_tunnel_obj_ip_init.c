
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct nlattr {int dummy; } ;
struct nft_ctx {int dummy; } ;
struct TYPE_4__ {void* dst; void* src; } ;
struct TYPE_5__ {TYPE_1__ ipv4; } ;
struct TYPE_6__ {TYPE_2__ u; } ;
struct ip_tunnel_info {TYPE_3__ key; } ;


 int EINVAL ;
 size_t NFTA_TUNNEL_KEY_IP_DST ;
 int NFTA_TUNNEL_KEY_IP_MAX ;
 size_t NFTA_TUNNEL_KEY_IP_SRC ;
 int nft_tunnel_ip_policy ;
 void* nla_get_be32 (struct nlattr*) ;
 int nla_parse_nested_deprecated (struct nlattr**,int ,struct nlattr const*,int ,int *) ;

__attribute__((used)) static int nft_tunnel_obj_ip_init(const struct nft_ctx *ctx,
      const struct nlattr *attr,
      struct ip_tunnel_info *info)
{
 struct nlattr *tb[NFTA_TUNNEL_KEY_IP_MAX + 1];
 int err;

 err = nla_parse_nested_deprecated(tb, NFTA_TUNNEL_KEY_IP_MAX, attr,
       nft_tunnel_ip_policy, ((void*)0));
 if (err < 0)
  return err;

 if (!tb[NFTA_TUNNEL_KEY_IP_DST])
  return -EINVAL;

 if (tb[NFTA_TUNNEL_KEY_IP_SRC])
  info->key.u.ipv4.src = nla_get_be32(tb[NFTA_TUNNEL_KEY_IP_SRC]);
 if (tb[NFTA_TUNNEL_KEY_IP_DST])
  info->key.u.ipv4.dst = nla_get_be32(tb[NFTA_TUNNEL_KEY_IP_DST]);

 return 0;
}
