
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct flow_dissector_key {int dummy; } ;
struct flow_dissector {int dummy; } ;
struct fl_flow_key {int dummy; } ;


 int FLOW_DISSECTOR_KEY_ARP ;
 int FLOW_DISSECTOR_KEY_BASIC ;
 int FLOW_DISSECTOR_KEY_CONTROL ;
 int FLOW_DISSECTOR_KEY_CT ;
 int FLOW_DISSECTOR_KEY_CVLAN ;
 int FLOW_DISSECTOR_KEY_ENC_CONTROL ;
 int FLOW_DISSECTOR_KEY_ENC_IP ;
 int FLOW_DISSECTOR_KEY_ENC_IPV4_ADDRS ;
 int FLOW_DISSECTOR_KEY_ENC_IPV6_ADDRS ;
 int FLOW_DISSECTOR_KEY_ENC_KEYID ;
 int FLOW_DISSECTOR_KEY_ENC_OPTS ;
 int FLOW_DISSECTOR_KEY_ENC_PORTS ;
 int FLOW_DISSECTOR_KEY_ETH_ADDRS ;
 int FLOW_DISSECTOR_KEY_ICMP ;
 int FLOW_DISSECTOR_KEY_IP ;
 int FLOW_DISSECTOR_KEY_IPV4_ADDRS ;
 int FLOW_DISSECTOR_KEY_IPV6_ADDRS ;
 int FLOW_DISSECTOR_KEY_MAX ;
 int FLOW_DISSECTOR_KEY_META ;
 int FLOW_DISSECTOR_KEY_MPLS ;
 int FLOW_DISSECTOR_KEY_PORTS ;
 int FLOW_DISSECTOR_KEY_TCP ;
 int FLOW_DISSECTOR_KEY_VLAN ;
 scalar_t__ FL_KEY_IS_MASKED (struct fl_flow_key*,int ) ;
 int FL_KEY_SET (struct flow_dissector_key*,size_t,int ,int ) ;
 int FL_KEY_SET_IF_MASKED (struct fl_flow_key*,struct flow_dissector_key*,size_t,int ,int ) ;
 int arp ;
 int basic ;
 int control ;
 int ct ;
 int cvlan ;
 int enc_control ;
 int enc_ip ;
 int enc_ipv4 ;
 int enc_ipv6 ;
 int enc_key_id ;
 int enc_opts ;
 int enc_tp ;
 int eth ;
 int icmp ;
 int ip ;
 int ipv4 ;
 int ipv6 ;
 int meta ;
 int mpls ;
 int skb_flow_dissector_init (struct flow_dissector*,struct flow_dissector_key*,size_t) ;
 int tcp ;
 int tp ;
 int tp_max ;
 int tp_min ;
 int vlan ;

__attribute__((used)) static void fl_init_dissector(struct flow_dissector *dissector,
         struct fl_flow_key *mask)
{
 struct flow_dissector_key keys[FLOW_DISSECTOR_KEY_MAX];
 size_t cnt = 0;

 FL_KEY_SET_IF_MASKED(mask, keys, cnt,
        FLOW_DISSECTOR_KEY_META, meta);
 FL_KEY_SET(keys, cnt, FLOW_DISSECTOR_KEY_CONTROL, control);
 FL_KEY_SET(keys, cnt, FLOW_DISSECTOR_KEY_BASIC, basic);
 FL_KEY_SET_IF_MASKED(mask, keys, cnt,
        FLOW_DISSECTOR_KEY_ETH_ADDRS, eth);
 FL_KEY_SET_IF_MASKED(mask, keys, cnt,
        FLOW_DISSECTOR_KEY_IPV4_ADDRS, ipv4);
 FL_KEY_SET_IF_MASKED(mask, keys, cnt,
        FLOW_DISSECTOR_KEY_IPV6_ADDRS, ipv6);
 if (FL_KEY_IS_MASKED(mask, tp) ||
     FL_KEY_IS_MASKED(mask, tp_min) || FL_KEY_IS_MASKED(mask, tp_max))
  FL_KEY_SET(keys, cnt, FLOW_DISSECTOR_KEY_PORTS, tp);
 FL_KEY_SET_IF_MASKED(mask, keys, cnt,
        FLOW_DISSECTOR_KEY_IP, ip);
 FL_KEY_SET_IF_MASKED(mask, keys, cnt,
        FLOW_DISSECTOR_KEY_TCP, tcp);
 FL_KEY_SET_IF_MASKED(mask, keys, cnt,
        FLOW_DISSECTOR_KEY_ICMP, icmp);
 FL_KEY_SET_IF_MASKED(mask, keys, cnt,
        FLOW_DISSECTOR_KEY_ARP, arp);
 FL_KEY_SET_IF_MASKED(mask, keys, cnt,
        FLOW_DISSECTOR_KEY_MPLS, mpls);
 FL_KEY_SET_IF_MASKED(mask, keys, cnt,
        FLOW_DISSECTOR_KEY_VLAN, vlan);
 FL_KEY_SET_IF_MASKED(mask, keys, cnt,
        FLOW_DISSECTOR_KEY_CVLAN, cvlan);
 FL_KEY_SET_IF_MASKED(mask, keys, cnt,
        FLOW_DISSECTOR_KEY_ENC_KEYID, enc_key_id);
 FL_KEY_SET_IF_MASKED(mask, keys, cnt,
        FLOW_DISSECTOR_KEY_ENC_IPV4_ADDRS, enc_ipv4);
 FL_KEY_SET_IF_MASKED(mask, keys, cnt,
        FLOW_DISSECTOR_KEY_ENC_IPV6_ADDRS, enc_ipv6);
 if (FL_KEY_IS_MASKED(mask, enc_ipv4) ||
     FL_KEY_IS_MASKED(mask, enc_ipv6))
  FL_KEY_SET(keys, cnt, FLOW_DISSECTOR_KEY_ENC_CONTROL,
      enc_control);
 FL_KEY_SET_IF_MASKED(mask, keys, cnt,
        FLOW_DISSECTOR_KEY_ENC_PORTS, enc_tp);
 FL_KEY_SET_IF_MASKED(mask, keys, cnt,
        FLOW_DISSECTOR_KEY_ENC_IP, enc_ip);
 FL_KEY_SET_IF_MASKED(mask, keys, cnt,
        FLOW_DISSECTOR_KEY_ENC_OPTS, enc_opts);
 FL_KEY_SET_IF_MASKED(mask, keys, cnt,
        FLOW_DISSECTOR_KEY_CT, ct);

 skb_flow_dissector_init(dissector, keys, cnt);
}
