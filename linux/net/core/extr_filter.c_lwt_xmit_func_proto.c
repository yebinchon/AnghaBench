
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_prog {int dummy; } ;
struct bpf_func_proto {int dummy; } ;
typedef enum bpf_func_id { ____Placeholder_bpf_func_id } bpf_func_id ;
 struct bpf_func_proto const bpf_clone_redirect_proto ;
 struct bpf_func_proto const bpf_csum_update_proto ;
 struct bpf_func_proto const* bpf_get_skb_set_tunnel_proto (int) ;
 struct bpf_func_proto const bpf_l3_csum_replace_proto ;
 struct bpf_func_proto const bpf_l4_csum_replace_proto ;
 struct bpf_func_proto const bpf_lwt_xmit_push_encap_proto ;
 struct bpf_func_proto const bpf_redirect_proto ;
 struct bpf_func_proto const bpf_set_hash_invalid_proto ;
 struct bpf_func_proto const bpf_skb_change_head_proto ;
 struct bpf_func_proto const bpf_skb_change_tail_proto ;
 struct bpf_func_proto const bpf_skb_get_tunnel_key_proto ;
 struct bpf_func_proto const bpf_skb_get_tunnel_opt_proto ;
 struct bpf_func_proto const bpf_skb_store_bytes_proto ;
 struct bpf_func_proto const* lwt_out_func_proto (int,struct bpf_prog const*) ;

__attribute__((used)) static const struct bpf_func_proto *
lwt_xmit_func_proto(enum bpf_func_id func_id, const struct bpf_prog *prog)
{
 switch (func_id) {
 case 132:
  return &bpf_skb_get_tunnel_key_proto;
 case 130:
  return bpf_get_skb_set_tunnel_proto(func_id);
 case 131:
  return &bpf_skb_get_tunnel_opt_proto;
 case 129:
  return bpf_get_skb_set_tunnel_proto(func_id);
 case 136:
  return &bpf_redirect_proto;
 case 141:
  return &bpf_clone_redirect_proto;
 case 133:
  return &bpf_skb_change_tail_proto;
 case 134:
  return &bpf_skb_change_head_proto;
 case 128:
  return &bpf_skb_store_bytes_proto;
 case 140:
  return &bpf_csum_update_proto;
 case 139:
  return &bpf_l3_csum_replace_proto;
 case 138:
  return &bpf_l4_csum_replace_proto;
 case 135:
  return &bpf_set_hash_invalid_proto;
 case 137:
  return &bpf_lwt_xmit_push_encap_proto;
 default:
  return lwt_out_func_proto(func_id, prog);
 }
}
