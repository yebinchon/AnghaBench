
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct ip_tunnel_info {int mode; int options_len; int key; } ;


 int __ip_tun_to_nlattr (struct sk_buff*,int *,int ,int ,int ,int ) ;
 int ip_tunnel_info_af (struct ip_tunnel_info*) ;
 int ip_tunnel_info_opts (struct ip_tunnel_info*) ;

int ovs_nla_put_tunnel_info(struct sk_buff *skb,
       struct ip_tunnel_info *tun_info)
{
 return __ip_tun_to_nlattr(skb, &tun_info->key,
      ip_tunnel_info_opts(tun_info),
      tun_info->options_len,
      ip_tunnel_info_af(tun_info), tun_info->mode);
}
