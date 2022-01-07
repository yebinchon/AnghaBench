
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct nft_tunnel_obj {TYPE_3__* md; } ;
struct nft_object {int dummy; } ;
struct TYPE_4__ {int ttl; int tos; int tun_id; } ;
struct ip_tunnel_info {TYPE_1__ key; } ;
struct TYPE_5__ {struct ip_tunnel_info tun_info; } ;
struct TYPE_6__ {TYPE_2__ u; } ;


 int NFTA_TUNNEL_KEY_ID ;
 int NFTA_TUNNEL_KEY_TOS ;
 int NFTA_TUNNEL_KEY_TTL ;
 struct nft_tunnel_obj* nft_obj_data (struct nft_object*) ;
 scalar_t__ nft_tunnel_flags_dump (struct sk_buff*,struct ip_tunnel_info*) ;
 scalar_t__ nft_tunnel_ip_dump (struct sk_buff*,struct ip_tunnel_info*) ;
 scalar_t__ nft_tunnel_opts_dump (struct sk_buff*,struct nft_tunnel_obj*) ;
 scalar_t__ nft_tunnel_ports_dump (struct sk_buff*,struct ip_tunnel_info*) ;
 scalar_t__ nla_put_be32 (struct sk_buff*,int ,int ) ;
 scalar_t__ nla_put_u8 (struct sk_buff*,int ,int ) ;
 int tunnel_id_to_key32 (int ) ;

__attribute__((used)) static int nft_tunnel_obj_dump(struct sk_buff *skb,
          struct nft_object *obj, bool reset)
{
 struct nft_tunnel_obj *priv = nft_obj_data(obj);
 struct ip_tunnel_info *info = &priv->md->u.tun_info;

 if (nla_put_be32(skb, NFTA_TUNNEL_KEY_ID,
    tunnel_id_to_key32(info->key.tun_id)) ||
     nft_tunnel_ip_dump(skb, info) < 0 ||
     nft_tunnel_ports_dump(skb, info) < 0 ||
     nft_tunnel_flags_dump(skb, info) < 0 ||
     nla_put_u8(skb, NFTA_TUNNEL_KEY_TOS, info->key.tos) ||
     nla_put_u8(skb, NFTA_TUNNEL_KEY_TTL, info->key.ttl) ||
     nft_tunnel_opts_dump(skb, priv) < 0)
  goto nla_put_failure;

 return 0;

nla_put_failure:
 return -1;
}
