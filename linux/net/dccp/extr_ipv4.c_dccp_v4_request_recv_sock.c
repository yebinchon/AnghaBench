
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct request_sock {int dummy; } ;
struct inet_sock {int * inet_opt; int inet_id; int mc_ttl; int mc_index; int inet_saddr; } ;
struct inet_request_sock {int * ireq_opt; int ir_loc_addr; int ir_rmt_addr; } ;
struct dst_entry {int dummy; } ;
struct TYPE_2__ {int ttl; } ;


 int LINUX_MIB_LISTENDROPS ;
 int LINUX_MIB_LISTENOVERFLOWS ;
 int RCU_INIT_POINTER (int *,int ) ;
 int __NET_INC_STATS (int ,int ) ;
 scalar_t__ __inet_inherit_port (struct sock const*,struct sock*) ;
 struct sock* dccp_create_openreq_child (struct sock const*,struct request_sock*,struct sk_buff*) ;
 int dccp_done (struct sock*) ;
 int dccp_sync_mss (struct sock*,int ) ;
 int dst_mtu (struct dst_entry*) ;
 int dst_release (struct dst_entry*) ;
 int inet_csk_prepare_forced_close (struct sock*) ;
 struct dst_entry* inet_csk_route_child_sock (struct sock const*,struct sock*,struct request_sock*) ;
 int inet_ehash_nolisten (struct sock*,int ) ;
 int inet_iif (struct sk_buff*) ;
 struct inet_request_sock* inet_rsk (struct request_sock*) ;
 struct inet_sock* inet_sk (struct sock*) ;
 TYPE_1__* ip_hdr (struct sk_buff*) ;
 int prandom_u32 () ;
 int rcu_dereference (int *) ;
 int req_to_sk (struct request_sock*) ;
 scalar_t__ sk_acceptq_is_full (struct sock const*) ;
 int sk_daddr_set (struct sock*,int ) ;
 int sk_rcv_saddr_set (struct sock*,int ) ;
 int sk_setup_caps (struct sock*,struct dst_entry*) ;
 int sock_net (struct sock const*) ;

struct sock *dccp_v4_request_recv_sock(const struct sock *sk,
           struct sk_buff *skb,
           struct request_sock *req,
           struct dst_entry *dst,
           struct request_sock *req_unhash,
           bool *own_req)
{
 struct inet_request_sock *ireq;
 struct inet_sock *newinet;
 struct sock *newsk;

 if (sk_acceptq_is_full(sk))
  goto exit_overflow;

 newsk = dccp_create_openreq_child(sk, req, skb);
 if (newsk == ((void*)0))
  goto exit_nonewsk;

 newinet = inet_sk(newsk);
 ireq = inet_rsk(req);
 sk_daddr_set(newsk, ireq->ir_rmt_addr);
 sk_rcv_saddr_set(newsk, ireq->ir_loc_addr);
 newinet->inet_saddr = ireq->ir_loc_addr;
 RCU_INIT_POINTER(newinet->inet_opt, rcu_dereference(ireq->ireq_opt));
 newinet->mc_index = inet_iif(skb);
 newinet->mc_ttl = ip_hdr(skb)->ttl;
 newinet->inet_id = prandom_u32();

 if (dst == ((void*)0) && (dst = inet_csk_route_child_sock(sk, newsk, req)) == ((void*)0))
  goto put_and_exit;

 sk_setup_caps(newsk, dst);

 dccp_sync_mss(newsk, dst_mtu(dst));

 if (__inet_inherit_port(sk, newsk) < 0)
  goto put_and_exit;
 *own_req = inet_ehash_nolisten(newsk, req_to_sk(req_unhash));
 if (*own_req)
  ireq->ireq_opt = ((void*)0);
 else
  newinet->inet_opt = ((void*)0);
 return newsk;

exit_overflow:
 __NET_INC_STATS(sock_net(sk), LINUX_MIB_LISTENOVERFLOWS);
exit_nonewsk:
 dst_release(dst);
exit:
 __NET_INC_STATS(sock_net(sk), LINUX_MIB_LISTENDROPS);
 return ((void*)0);
put_and_exit:
 newinet->inet_opt = ((void*)0);
 inet_csk_prepare_forced_close(newsk);
 dccp_done(newsk);
 goto exit;
}
