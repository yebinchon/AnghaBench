
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcpnv {int nv_base_rtt; int nv_lower_bound_rtt; int nv_allow_cwnd_growth; scalar_t__ cwnd_growth_factor; scalar_t__ nv_catchup; int nv_min_cwnd; void* nv_min_rtt_new; void* nv_min_rtt; scalar_t__ nv_min_rtt_reset_jiffies; } ;
struct sock {int dummy; } ;


 int BPF_SOCK_OPS_BASE_RTT ;
 int HZ ;
 void* NV_INIT_RTT ;
 int NV_MIN_CWND ;
 struct tcpnv* inet_csk_ca (struct sock*) ;
 scalar_t__ jiffies ;
 int tcp_call_bpf (struct sock*,int ,int ,int *) ;
 int tcpnv_reset (struct tcpnv*,struct sock*) ;

__attribute__((used)) static void tcpnv_init(struct sock *sk)
{
 struct tcpnv *ca = inet_csk_ca(sk);
 int base_rtt;

 tcpnv_reset(ca, sk);






 base_rtt = tcp_call_bpf(sk, BPF_SOCK_OPS_BASE_RTT, 0, ((void*)0));
 if (base_rtt > 0) {
  ca->nv_base_rtt = base_rtt;
  ca->nv_lower_bound_rtt = (base_rtt * 205) >> 8;
 } else {
  ca->nv_base_rtt = 0;
  ca->nv_lower_bound_rtt = 0;
 }

 ca->nv_allow_cwnd_growth = 1;
 ca->nv_min_rtt_reset_jiffies = jiffies + 2 * HZ;
 ca->nv_min_rtt = NV_INIT_RTT;
 ca->nv_min_rtt_new = NV_INIT_RTT;
 ca->nv_min_cwnd = NV_MIN_CWND;
 ca->nv_catchup = 0;
 ca->cwnd_growth_factor = 0;
}
