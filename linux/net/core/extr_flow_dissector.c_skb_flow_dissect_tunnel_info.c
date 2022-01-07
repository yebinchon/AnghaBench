
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_5__ {int dst; int src; } ;
struct TYPE_4__ {int dst; int src; } ;
struct TYPE_6__ {TYPE_2__ ipv6; TYPE_1__ ipv4; } ;
struct ip_tunnel_key {int tun_flags; int ttl; int tos; int tp_dst; int tp_src; int tun_id; TYPE_3__ u; } ;
struct ip_tunnel_info {struct ip_tunnel_key key; scalar_t__ options_len; } ;
struct flow_dissector_key_ports {int dst; int src; } ;
struct flow_dissector_key_keyid {int keyid; } ;
struct flow_dissector_key_ipv6_addrs {int dst; int src; } ;
struct flow_dissector_key_ipv4_addrs {int dst; int src; } ;
struct flow_dissector_key_ip {int ttl; int tos; } ;
struct flow_dissector_key_enc_opts {int dst_opt_type; int data; scalar_t__ len; } ;
struct flow_dissector {int dummy; } ;




 int FLOW_DISSECTOR_KEY_ENC_CONTROL ;
 int FLOW_DISSECTOR_KEY_ENC_IP ;
 int FLOW_DISSECTOR_KEY_ENC_IPV4_ADDRS ;
 int FLOW_DISSECTOR_KEY_ENC_IPV6_ADDRS ;
 int FLOW_DISSECTOR_KEY_ENC_KEYID ;
 int FLOW_DISSECTOR_KEY_ENC_OPTS ;
 int FLOW_DISSECTOR_KEY_ENC_PORTS ;
 int FLOW_DISSECTOR_KEY_IPV4_ADDRS ;
 int FLOW_DISSECTOR_KEY_IPV6_ADDRS ;
 int TUNNEL_OPTIONS_PRESENT ;
 scalar_t__ dissector_uses_key (struct flow_dissector*,int ) ;
 int ip_tunnel_info_af (struct ip_tunnel_info*) ;
 int ip_tunnel_info_opts_get (int ,struct ip_tunnel_info*) ;
 int skb_flow_dissect_set_enc_addr_type (int ,struct flow_dissector*,void*) ;
 void* skb_flow_dissector_target (struct flow_dissector*,int ,void*) ;
 struct ip_tunnel_info* skb_tunnel_info (struct sk_buff const*) ;
 int tunnel_id_to_key32 (int ) ;

void
skb_flow_dissect_tunnel_info(const struct sk_buff *skb,
        struct flow_dissector *flow_dissector,
        void *target_container)
{
 struct ip_tunnel_info *info;
 struct ip_tunnel_key *key;


 if (!dissector_uses_key(flow_dissector,
    FLOW_DISSECTOR_KEY_ENC_KEYID) &&
     !dissector_uses_key(flow_dissector,
    FLOW_DISSECTOR_KEY_ENC_IPV4_ADDRS) &&
     !dissector_uses_key(flow_dissector,
    FLOW_DISSECTOR_KEY_ENC_IPV6_ADDRS) &&
     !dissector_uses_key(flow_dissector,
    FLOW_DISSECTOR_KEY_ENC_CONTROL) &&
     !dissector_uses_key(flow_dissector,
    FLOW_DISSECTOR_KEY_ENC_PORTS) &&
     !dissector_uses_key(flow_dissector,
    FLOW_DISSECTOR_KEY_ENC_IP) &&
     !dissector_uses_key(flow_dissector,
    FLOW_DISSECTOR_KEY_ENC_OPTS))
  return;

 info = skb_tunnel_info(skb);
 if (!info)
  return;

 key = &info->key;

 switch (ip_tunnel_info_af(info)) {
 case 129:
  skb_flow_dissect_set_enc_addr_type(FLOW_DISSECTOR_KEY_IPV4_ADDRS,
         flow_dissector,
         target_container);
  if (dissector_uses_key(flow_dissector,
           FLOW_DISSECTOR_KEY_ENC_IPV4_ADDRS)) {
   struct flow_dissector_key_ipv4_addrs *ipv4;

   ipv4 = skb_flow_dissector_target(flow_dissector,
        FLOW_DISSECTOR_KEY_ENC_IPV4_ADDRS,
        target_container);
   ipv4->src = key->u.ipv4.src;
   ipv4->dst = key->u.ipv4.dst;
  }
  break;
 case 128:
  skb_flow_dissect_set_enc_addr_type(FLOW_DISSECTOR_KEY_IPV6_ADDRS,
         flow_dissector,
         target_container);
  if (dissector_uses_key(flow_dissector,
           FLOW_DISSECTOR_KEY_ENC_IPV6_ADDRS)) {
   struct flow_dissector_key_ipv6_addrs *ipv6;

   ipv6 = skb_flow_dissector_target(flow_dissector,
        FLOW_DISSECTOR_KEY_ENC_IPV6_ADDRS,
        target_container);
   ipv6->src = key->u.ipv6.src;
   ipv6->dst = key->u.ipv6.dst;
  }
  break;
 }

 if (dissector_uses_key(flow_dissector, FLOW_DISSECTOR_KEY_ENC_KEYID)) {
  struct flow_dissector_key_keyid *keyid;

  keyid = skb_flow_dissector_target(flow_dissector,
        FLOW_DISSECTOR_KEY_ENC_KEYID,
        target_container);
  keyid->keyid = tunnel_id_to_key32(key->tun_id);
 }

 if (dissector_uses_key(flow_dissector, FLOW_DISSECTOR_KEY_ENC_PORTS)) {
  struct flow_dissector_key_ports *tp;

  tp = skb_flow_dissector_target(flow_dissector,
            FLOW_DISSECTOR_KEY_ENC_PORTS,
            target_container);
  tp->src = key->tp_src;
  tp->dst = key->tp_dst;
 }

 if (dissector_uses_key(flow_dissector, FLOW_DISSECTOR_KEY_ENC_IP)) {
  struct flow_dissector_key_ip *ip;

  ip = skb_flow_dissector_target(flow_dissector,
            FLOW_DISSECTOR_KEY_ENC_IP,
            target_container);
  ip->tos = key->tos;
  ip->ttl = key->ttl;
 }

 if (dissector_uses_key(flow_dissector, FLOW_DISSECTOR_KEY_ENC_OPTS)) {
  struct flow_dissector_key_enc_opts *enc_opt;

  enc_opt = skb_flow_dissector_target(flow_dissector,
          FLOW_DISSECTOR_KEY_ENC_OPTS,
          target_container);

  if (info->options_len) {
   enc_opt->len = info->options_len;
   ip_tunnel_info_opts_get(enc_opt->data, info);
   enc_opt->dst_opt_type = info->key.tun_flags &
      TUNNEL_OPTIONS_PRESENT;
  }
 }
}
