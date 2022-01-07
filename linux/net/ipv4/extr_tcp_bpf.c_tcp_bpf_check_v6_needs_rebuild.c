
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {scalar_t__ sk_family; } ;
struct proto {int dummy; } ;


 scalar_t__ AF_INET6 ;
 size_t TCP_BPF_IPV6 ;
 scalar_t__ likely (int) ;
 struct proto* smp_load_acquire (struct proto**) ;
 int smp_store_release (struct proto**,struct proto*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int * tcp_bpf_prots ;
 int tcp_bpf_rebuild_protos (int ,struct proto*) ;
 int tcpv6_prot_lock ;
 struct proto* tcpv6_prot_saved ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void tcp_bpf_check_v6_needs_rebuild(struct sock *sk, struct proto *ops)
{
 if (sk->sk_family == AF_INET6 &&
     unlikely(ops != smp_load_acquire(&tcpv6_prot_saved))) {
  spin_lock_bh(&tcpv6_prot_lock);
  if (likely(ops != tcpv6_prot_saved)) {
   tcp_bpf_rebuild_protos(tcp_bpf_prots[TCP_BPF_IPV6], ops);
   smp_store_release(&tcpv6_prot_saved, ops);
  }
  spin_unlock_bh(&tcpv6_prot_lock);
 }
}
