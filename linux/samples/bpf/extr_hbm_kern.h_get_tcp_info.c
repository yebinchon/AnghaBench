
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hbm_pkt_info {int rtt; int packets_out; int cwnd; } ;
struct bpf_tcp_sock {int srtt_us; int packets_out; int snd_cwnd; } ;
struct bpf_sock {scalar_t__ protocol; } ;
struct __sk_buff {struct bpf_sock* sk; } ;


 scalar_t__ IPPROTO_TCP ;
 struct bpf_sock* bpf_sk_fullsock (struct bpf_sock*) ;
 struct bpf_tcp_sock* bpf_tcp_sock (struct bpf_sock*) ;

__attribute__((used)) static int get_tcp_info(struct __sk_buff *skb, struct hbm_pkt_info *pkti)
{
 struct bpf_sock *sk;
 struct bpf_tcp_sock *tp;

 sk = skb->sk;
 if (sk) {
  sk = bpf_sk_fullsock(sk);
  if (sk) {
   if (sk->protocol == IPPROTO_TCP) {
    tp = bpf_tcp_sock(sk);
    if (tp) {
     pkti->cwnd = tp->snd_cwnd;
     pkti->rtt = tp->srtt_us >> 3;
     pkti->packets_out = tp->packets_out;
     return 0;
    }
   }
  }
 }
 pkti->cwnd = 0;
 pkti->rtt = 0;
 pkti->packets_out = 0;
 return 1;
}
