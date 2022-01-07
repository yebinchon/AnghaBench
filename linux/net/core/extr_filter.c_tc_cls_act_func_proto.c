
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_prog {int dummy; } ;
struct bpf_func_proto {int dummy; } ;
typedef enum bpf_func_id { ____Placeholder_bpf_func_id } bpf_func_id ;
 struct bpf_func_proto const* bpf_base_func_proto (int) ;
 struct bpf_func_proto const bpf_clone_redirect_proto ;
 struct bpf_func_proto const bpf_csum_diff_proto ;
 struct bpf_func_proto const bpf_csum_update_proto ;
 struct bpf_func_proto const bpf_get_cgroup_classid_proto ;
 struct bpf_func_proto const bpf_get_hash_recalc_proto ;
 struct bpf_func_proto const bpf_get_listener_sock_proto ;
 struct bpf_func_proto const bpf_get_route_realm_proto ;
 struct bpf_func_proto const* bpf_get_skb_set_tunnel_proto (int) ;
 struct bpf_func_proto const bpf_get_smp_processor_id_proto ;
 struct bpf_func_proto const bpf_get_socket_cookie_proto ;
 struct bpf_func_proto const bpf_get_socket_uid_proto ;
 struct bpf_func_proto const bpf_l3_csum_replace_proto ;
 struct bpf_func_proto const bpf_l4_csum_replace_proto ;
 struct bpf_func_proto const bpf_redirect_proto ;
 struct bpf_func_proto const bpf_set_hash_invalid_proto ;
 struct bpf_func_proto const bpf_set_hash_proto ;
 struct bpf_func_proto const bpf_sk_fullsock_proto ;
 struct bpf_func_proto const bpf_sk_lookup_tcp_proto ;
 struct bpf_func_proto const bpf_sk_lookup_udp_proto ;
 struct bpf_func_proto const bpf_sk_release_proto ;
 struct bpf_func_proto const bpf_sk_storage_delete_proto ;
 struct bpf_func_proto const bpf_sk_storage_get_proto ;
 struct bpf_func_proto const bpf_skb_adjust_room_proto ;
 struct bpf_func_proto const bpf_skb_ancestor_cgroup_id_proto ;
 struct bpf_func_proto const bpf_skb_cgroup_id_proto ;
 struct bpf_func_proto const bpf_skb_change_proto_proto ;
 struct bpf_func_proto const bpf_skb_change_tail_proto ;
 struct bpf_func_proto const bpf_skb_change_type_proto ;
 struct bpf_func_proto const bpf_skb_ecn_set_ce_proto ;
 struct bpf_func_proto const bpf_skb_event_output_proto ;
 struct bpf_func_proto const bpf_skb_fib_lookup_proto ;
 struct bpf_func_proto const bpf_skb_get_tunnel_key_proto ;
 struct bpf_func_proto const bpf_skb_get_tunnel_opt_proto ;
 struct bpf_func_proto const bpf_skb_get_xfrm_state_proto ;
 struct bpf_func_proto const bpf_skb_load_bytes_proto ;
 struct bpf_func_proto const bpf_skb_load_bytes_relative_proto ;
 struct bpf_func_proto const bpf_skb_pull_data_proto ;
 struct bpf_func_proto const bpf_skb_store_bytes_proto ;
 struct bpf_func_proto const bpf_skb_under_cgroup_proto ;
 struct bpf_func_proto const bpf_skb_vlan_pop_proto ;
 struct bpf_func_proto const bpf_skb_vlan_push_proto ;
 struct bpf_func_proto const bpf_skc_lookup_tcp_proto ;
 struct bpf_func_proto const bpf_tcp_check_syncookie_proto ;
 struct bpf_func_proto const bpf_tcp_gen_syncookie_proto ;
 struct bpf_func_proto const bpf_tcp_sock_proto ;

__attribute__((used)) static const struct bpf_func_proto *
tc_cls_act_func_proto(enum bpf_func_id func_id, const struct bpf_prog *prog)
{
 switch (func_id) {
 case 135:
  return &bpf_skb_store_bytes_proto;
 case 140:
  return &bpf_skb_load_bytes_proto;
 case 139:
  return &bpf_skb_load_bytes_relative_proto;
 case 138:
  return &bpf_skb_pull_data_proto;
 case 172:
  return &bpf_csum_diff_proto;
 case 171:
  return &bpf_csum_update_proto;
 case 162:
  return &bpf_l3_csum_replace_proto;
 case 161:
  return &bpf_l4_csum_replace_proto;
 case 173:
  return &bpf_clone_redirect_proto;
 case 169:
  return &bpf_get_cgroup_classid_proto;
 case 132:
  return &bpf_skb_vlan_push_proto;
 case 133:
  return &bpf_skb_vlan_pop_proto;
 case 147:
  return &bpf_skb_change_proto_proto;
 case 145:
  return &bpf_skb_change_type_proto;
 case 150:
  return &bpf_skb_adjust_room_proto;
 case 146:
  return &bpf_skb_change_tail_proto;
 case 143:
  return &bpf_skb_get_tunnel_key_proto;
 case 137:
  return bpf_get_skb_set_tunnel_proto(func_id);
 case 142:
  return &bpf_skb_get_tunnel_opt_proto;
 case 136:
  return bpf_get_skb_set_tunnel_proto(func_id);
 case 159:
  return &bpf_redirect_proto;
 case 166:
  return &bpf_get_route_realm_proto;
 case 168:
  return &bpf_get_hash_recalc_proto;
 case 157:
  return &bpf_set_hash_invalid_proto;
 case 158:
  return &bpf_set_hash_proto;
 case 160:
  return &bpf_skb_event_output_proto;
 case 165:
  return &bpf_get_smp_processor_id_proto;
 case 134:
  return &bpf_skb_under_cgroup_proto;
 case 164:
  return &bpf_get_socket_cookie_proto;
 case 163:
  return &bpf_get_socket_uid_proto;
 case 170:
  return &bpf_skb_fib_lookup_proto;
 case 156:
  return &bpf_sk_fullsock_proto;
 case 151:
  return &bpf_sk_storage_get_proto;
 case 152:
  return &bpf_sk_storage_delete_proto;
 default:
  return bpf_base_func_proto(func_id);
 }
}
