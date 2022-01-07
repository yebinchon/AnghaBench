
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vxlan_metadata {int dummy; } ;
struct nlattr {int dummy; } ;
struct TYPE_3__ {int gbp; } ;
struct TYPE_4__ {TYPE_1__ vxlan; } ;
struct nft_tunnel_opts {int len; int flags; TYPE_2__ u; } ;


 int EINVAL ;
 size_t NFTA_TUNNEL_KEY_VXLAN_GBP ;
 int NFTA_TUNNEL_KEY_VXLAN_MAX ;
 int TUNNEL_VXLAN_OPT ;
 int nft_tunnel_opts_vxlan_policy ;
 int nla_get_be32 (struct nlattr*) ;
 int nla_parse_nested_deprecated (struct nlattr**,int ,struct nlattr const*,int ,int *) ;
 int ntohl (int ) ;

__attribute__((used)) static int nft_tunnel_obj_vxlan_init(const struct nlattr *attr,
         struct nft_tunnel_opts *opts)
{
 struct nlattr *tb[NFTA_TUNNEL_KEY_VXLAN_MAX + 1];
 int err;

 err = nla_parse_nested_deprecated(tb, NFTA_TUNNEL_KEY_VXLAN_MAX, attr,
       nft_tunnel_opts_vxlan_policy, ((void*)0));
 if (err < 0)
  return err;

 if (!tb[NFTA_TUNNEL_KEY_VXLAN_GBP])
  return -EINVAL;

 opts->u.vxlan.gbp = ntohl(nla_get_be32(tb[NFTA_TUNNEL_KEY_VXLAN_GBP]));

 opts->len = sizeof(struct vxlan_metadata);
 opts->flags = TUNNEL_VXLAN_OPT;

 return 0;
}
