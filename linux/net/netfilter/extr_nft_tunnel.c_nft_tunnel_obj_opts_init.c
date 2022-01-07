
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlattr {int dummy; } ;
struct nft_tunnel_opts {int dummy; } ;
struct nft_ctx {int dummy; } ;
struct ip_tunnel_info {int dummy; } ;


 int EOPNOTSUPP ;
 size_t NFTA_TUNNEL_KEY_OPTS_ERSPAN ;
 int NFTA_TUNNEL_KEY_OPTS_MAX ;
 size_t NFTA_TUNNEL_KEY_OPTS_VXLAN ;
 int nft_tunnel_obj_erspan_init (struct nlattr*,struct nft_tunnel_opts*) ;
 int nft_tunnel_obj_vxlan_init (struct nlattr*,struct nft_tunnel_opts*) ;
 int nft_tunnel_opts_policy ;
 int nla_parse_nested_deprecated (struct nlattr**,int ,struct nlattr const*,int ,int *) ;

__attribute__((used)) static int nft_tunnel_obj_opts_init(const struct nft_ctx *ctx,
        const struct nlattr *attr,
        struct ip_tunnel_info *info,
        struct nft_tunnel_opts *opts)
{
 struct nlattr *tb[NFTA_TUNNEL_KEY_OPTS_MAX + 1];
 int err;

 err = nla_parse_nested_deprecated(tb, NFTA_TUNNEL_KEY_OPTS_MAX, attr,
       nft_tunnel_opts_policy, ((void*)0));
 if (err < 0)
  return err;

 if (tb[NFTA_TUNNEL_KEY_OPTS_VXLAN]) {
  err = nft_tunnel_obj_vxlan_init(tb[NFTA_TUNNEL_KEY_OPTS_VXLAN],
      opts);
 } else if (tb[NFTA_TUNNEL_KEY_OPTS_ERSPAN]) {
  err = nft_tunnel_obj_erspan_init(tb[NFTA_TUNNEL_KEY_OPTS_ERSPAN],
       opts);
 } else {
  return -EOPNOTSUPP;
 }

 return err;
}
