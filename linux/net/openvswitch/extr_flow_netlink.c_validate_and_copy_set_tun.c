
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sw_flow_match {int dummy; } ;
struct TYPE_6__ {scalar_t__ dst; } ;
struct TYPE_7__ {TYPE_2__ ipv4; } ;
struct TYPE_8__ {TYPE_3__ u; } ;
struct sw_flow_key {scalar_t__ tun_proto; scalar_t__ tun_opts_len; TYPE_4__ tun_key; } ;
struct sw_flow_actions {int dummy; } ;
struct ovs_tunnel_info {struct metadata_dst* tun_dst; } ;
typedef struct nlattr const nlattr ;
struct ip_tunnel_info {TYPE_4__ key; int mode; int dst_cache; } ;
struct TYPE_5__ {struct ip_tunnel_info tun_info; } ;
struct metadata_dst {TYPE_1__ u; } ;
struct dst_entry {int dummy; } ;
typedef scalar_t__ __be16 ;


 scalar_t__ AF_INET ;
 scalar_t__ AF_INET6 ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IP_TUNNEL_INFO_BRIDGE ;
 int IP_TUNNEL_INFO_IPV6 ;
 int IP_TUNNEL_INFO_TX ;
 scalar_t__ IS_ERR (struct nlattr const*) ;
 int METADATA_IP_TUNNEL ;
 int OVS_ACTION_ATTR_SET ;
 int OVS_KEY_ATTR_TUNNEL_INFO ;



 int PTR_ERR (struct nlattr const*) ;
 scalar_t__ TUNNEL_ERSPAN_OPT ;
 scalar_t__ TUNNEL_GENEVE_OPT ;
 scalar_t__ TUNNEL_VXLAN_OPT ;
 int TUN_METADATA_OPTS (struct sw_flow_key*,scalar_t__) ;
 struct nlattr const* __add_action (struct sw_flow_actions**,int ,int *,int,int) ;
 int add_nested_action_end (struct sw_flow_actions*,int) ;
 int add_nested_action_start (struct sw_flow_actions**,int ,int) ;
 int dst_cache_init (int *,int ) ;
 int dst_release (struct dst_entry*) ;
 int ip_tun_from_nlattr (struct ovs_tunnel_info*,struct sw_flow_match*,int,int) ;
 int ip_tunnel_info_opts_set (struct ip_tunnel_info*,int ,scalar_t__,scalar_t__) ;
 struct metadata_dst* metadata_dst_alloc (scalar_t__,int ,int ) ;
 struct ovs_tunnel_info* nla_data (struct nlattr const*) ;
 int ovs_match_init (struct sw_flow_match*,struct sw_flow_key*,int,int *) ;
 int validate_geneve_opts (struct sw_flow_key*) ;

__attribute__((used)) static int validate_and_copy_set_tun(const struct nlattr *attr,
         struct sw_flow_actions **sfa, bool log)
{
 struct sw_flow_match match;
 struct sw_flow_key key;
 struct metadata_dst *tun_dst;
 struct ip_tunnel_info *tun_info;
 struct ovs_tunnel_info *ovs_tun;
 struct nlattr *a;
 int err = 0, start, opts_type;
 __be16 dst_opt_type;

 dst_opt_type = 0;
 ovs_match_init(&match, &key, 1, ((void*)0));
 opts_type = ip_tun_from_nlattr(nla_data(attr), &match, 0, log);
 if (opts_type < 0)
  return opts_type;

 if (key.tun_opts_len) {
  switch (opts_type) {
  case 129:
   err = validate_geneve_opts(&key);
   if (err < 0)
    return err;
   dst_opt_type = TUNNEL_GENEVE_OPT;
   break;
  case 128:
   dst_opt_type = TUNNEL_VXLAN_OPT;
   break;
  case 130:
   dst_opt_type = TUNNEL_ERSPAN_OPT;
   break;
  }
 }

 start = add_nested_action_start(sfa, OVS_ACTION_ATTR_SET, log);
 if (start < 0)
  return start;

 tun_dst = metadata_dst_alloc(key.tun_opts_len, METADATA_IP_TUNNEL,
         GFP_KERNEL);

 if (!tun_dst)
  return -ENOMEM;

 err = dst_cache_init(&tun_dst->u.tun_info.dst_cache, GFP_KERNEL);
 if (err) {
  dst_release((struct dst_entry *)tun_dst);
  return err;
 }

 a = __add_action(sfa, OVS_KEY_ATTR_TUNNEL_INFO, ((void*)0),
    sizeof(*ovs_tun), log);
 if (IS_ERR(a)) {
  dst_release((struct dst_entry *)tun_dst);
  return PTR_ERR(a);
 }

 ovs_tun = nla_data(a);
 ovs_tun->tun_dst = tun_dst;

 tun_info = &tun_dst->u.tun_info;
 tun_info->mode = IP_TUNNEL_INFO_TX;
 if (key.tun_proto == AF_INET6)
  tun_info->mode |= IP_TUNNEL_INFO_IPV6;
 else if (key.tun_proto == AF_INET && key.tun_key.u.ipv4.dst == 0)
  tun_info->mode |= IP_TUNNEL_INFO_BRIDGE;
 tun_info->key = key.tun_key;





 ip_tunnel_info_opts_set(tun_info,
    TUN_METADATA_OPTS(&key, key.tun_opts_len),
    key.tun_opts_len, dst_opt_type);
 add_nested_action_end(*sfa, start);

 return err;
}
