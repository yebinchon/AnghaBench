
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {int proto; int frag; } ;
struct sw_flow_key {TYPE_1__ ip; } ;
struct sw_flow_actions {int dummy; } ;
struct ovs_key_ipv6 {int ipv6_label; int ipv6_frag; int ipv6_proto; } ;
struct ovs_key_ipv4 {int ipv4_frag; int ipv4_proto; } ;
typedef struct nlattr const nlattr ;
typedef int __be16 ;
struct TYPE_4__ {int len; } ;


 int EINVAL ;
 int ETH_P_IP ;
 int ETH_P_IPV6 ;
 int ETH_P_NSH ;
 int IPPROTO_SCTP ;
 int IPPROTO_TCP ;
 int IPPROTO_UDP ;
 scalar_t__ IS_ERR (struct nlattr const*) ;
 int MAC_PROTO_ETHERNET ;
 int OVS_ACTION_ATTR_SET_TO_MASKED ;





 int OVS_KEY_ATTR_MAX ;
 int PTR_ERR (struct nlattr const*) ;
 struct nlattr const* __add_action (struct sw_flow_actions**,int,int *,int,int) ;
 int add_nested_action_end (struct sw_flow_actions*,int) ;
 int add_nested_action_start (struct sw_flow_actions**,int ,int) ;
 int check_attr_len (size_t,int ) ;
 int eth_p_mpls (int ) ;
 int htonl (int) ;
 int htons (int ) ;
 int memcpy (void*,void*,size_t) ;
 int memset (void*,int,size_t) ;
 void* nla_data (struct nlattr const*) ;
 size_t nla_len (struct nlattr const*) ;
 size_t nla_total_size (size_t) ;
 int nla_type (struct nlattr const*) ;
 int ntohl (int ) ;
 TYPE_2__* ovs_key_lens ;
 int validate_and_copy_set_tun (struct nlattr const*,struct sw_flow_actions**,int) ;
 int validate_masked (void*,size_t) ;
 int validate_nsh (void*,int,int,int) ;

__attribute__((used)) static int validate_set(const struct nlattr *a,
   const struct sw_flow_key *flow_key,
   struct sw_flow_actions **sfa, bool *skip_copy,
   u8 mac_proto, __be16 eth_type, bool masked, bool log)
{
 const struct nlattr *ovs_key = nla_data(a);
 int key_type = nla_type(ovs_key);
 size_t key_len;


 if (nla_total_size(nla_len(ovs_key)) != nla_len(a))
  return -EINVAL;

 key_len = nla_len(ovs_key);
 if (masked)
  key_len /= 2;

 if (key_type > OVS_KEY_ATTR_MAX ||
     !check_attr_len(key_len, ovs_key_lens[key_type].len))
  return -EINVAL;

 if (masked && !validate_masked(nla_data(ovs_key), key_len))
  return -EINVAL;

 switch (key_type) {
 const struct ovs_key_ipv4 *ipv4_key;
 const struct ovs_key_ipv6 *ipv6_key;
 int err;

 case 133:
 case 131:
 case 139:
 case 140:
  break;

 case 138:
  if (mac_proto != MAC_PROTO_ETHERNET)
   return -EINVAL;
  break;

 case 129:
  if (masked)
   return -EINVAL;

  *skip_copy = 1;
  err = validate_and_copy_set_tun(a, sfa, log);
  if (err)
   return err;
  break;

 case 137:
  if (eth_type != htons(ETH_P_IP))
   return -EINVAL;

  ipv4_key = nla_data(ovs_key);

  if (masked) {
   const struct ovs_key_ipv4 *mask = ipv4_key + 1;


   if (mask->ipv4_proto || mask->ipv4_frag)
    return -EINVAL;
  } else {
   if (ipv4_key->ipv4_proto != flow_key->ip.proto)
    return -EINVAL;

   if (ipv4_key->ipv4_frag != flow_key->ip.frag)
    return -EINVAL;
  }
  break;

 case 136:
  if (eth_type != htons(ETH_P_IPV6))
   return -EINVAL;

  ipv6_key = nla_data(ovs_key);

  if (masked) {
   const struct ovs_key_ipv6 *mask = ipv6_key + 1;


   if (mask->ipv6_proto || mask->ipv6_frag)
    return -EINVAL;


   if (ntohl(mask->ipv6_label) & 0xFFF00000)
    return -EINVAL;
  } else {
   if (ipv6_key->ipv6_proto != flow_key->ip.proto)
    return -EINVAL;

   if (ipv6_key->ipv6_frag != flow_key->ip.frag)
    return -EINVAL;
  }
  if (ntohl(ipv6_key->ipv6_label) & 0xFFF00000)
   return -EINVAL;

  break;

 case 130:
  if ((eth_type != htons(ETH_P_IP) &&
       eth_type != htons(ETH_P_IPV6)) ||
      flow_key->ip.proto != IPPROTO_TCP)
   return -EINVAL;

  break;

 case 128:
  if ((eth_type != htons(ETH_P_IP) &&
       eth_type != htons(ETH_P_IPV6)) ||
      flow_key->ip.proto != IPPROTO_UDP)
   return -EINVAL;

  break;

 case 135:
  if (!eth_p_mpls(eth_type))
   return -EINVAL;
  break;

 case 132:
  if ((eth_type != htons(ETH_P_IP) &&
       eth_type != htons(ETH_P_IPV6)) ||
      flow_key->ip.proto != IPPROTO_SCTP)
   return -EINVAL;

  break;

 case 134:
  if (eth_type != htons(ETH_P_NSH))
   return -EINVAL;
  if (!validate_nsh(nla_data(a), masked, 0, log))
   return -EINVAL;
  break;

 default:
  return -EINVAL;
 }


 if (!masked && key_type != 129) {
  int start, len = key_len * 2;
  struct nlattr *at;

  *skip_copy = 1;

  start = add_nested_action_start(sfa,
      OVS_ACTION_ATTR_SET_TO_MASKED,
      log);
  if (start < 0)
   return start;

  at = __add_action(sfa, key_type, ((void*)0), len, log);
  if (IS_ERR(at))
   return PTR_ERR(at);

  memcpy(nla_data(at), nla_data(ovs_key), key_len);
  memset(nla_data(at) + key_len, 0xff, key_len);

  if (key_type == 136) {
   struct ovs_key_ipv6 *mask = nla_data(at) + key_len;

   mask->ipv6_label &= htonl(0x000FFFFF);
  }
  add_nested_action_end(*sfa, start);
 }

 return 0;
}
