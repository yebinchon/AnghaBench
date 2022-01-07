
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_in6 {int sin6_port; } ;
struct bpf_tcp_sock {int dummy; } ;
struct bpf_sock {scalar_t__ family; scalar_t__ src_port; int state; int src_ip6; } ;
struct __sk_buff {struct bpf_sock* sk; } ;
typedef int __u32 ;


 int ADDR_SRV_IDX ;
 scalar_t__ AF_INET6 ;
 int INGRESS_LINUM_IDX ;
 int INGRESS_LISTEN_IDX ;
 int RETURN ;
 int addr_map ;
 struct bpf_sock* bpf_get_listener_sock (struct bpf_sock*) ;
 void* bpf_map_lookup_elem (int *,int *) ;
 scalar_t__ bpf_ntohs (int ) ;
 struct bpf_tcp_sock* bpf_tcp_sock (struct bpf_sock*) ;
 int is_loopback6 (int ) ;
 int skcpy (struct bpf_sock*,struct bpf_sock*) ;
 int sock_result_map ;
 int tcp_sock_result_map ;
 int tpcpy (struct bpf_tcp_sock*,struct bpf_tcp_sock*) ;

int ingress_read_sock_fields(struct __sk_buff *skb)
{
 __u32 srv_idx = ADDR_SRV_IDX, result_idx = INGRESS_LISTEN_IDX;
 struct bpf_tcp_sock *tp, *tp_ret;
 struct bpf_sock *sk, *sk_ret;
 struct sockaddr_in6 *srv_sa6;
 __u32 linum, linum_idx;

 linum_idx = INGRESS_LINUM_IDX;

 sk = skb->sk;
 if (!sk || sk->family != AF_INET6 || !is_loopback6(sk->src_ip6))
  RETURN;

 srv_sa6 = bpf_map_lookup_elem(&addr_map, &srv_idx);
 if (!srv_sa6 || sk->src_port != bpf_ntohs(srv_sa6->sin6_port))
  RETURN;

 if (sk->state != 10 && sk->state != 12)
  RETURN;

 sk = bpf_get_listener_sock(sk);
 if (!sk)
  RETURN;

 tp = bpf_tcp_sock(sk);
 if (!tp)
  RETURN;

 sk_ret = bpf_map_lookup_elem(&sock_result_map, &result_idx);
 tp_ret = bpf_map_lookup_elem(&tcp_sock_result_map, &result_idx);
 if (!sk_ret || !tp_ret)
  RETURN;

 skcpy(sk_ret, sk);
 tpcpy(tp_ret, tp);

 RETURN;
}
