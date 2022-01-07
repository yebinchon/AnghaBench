
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {scalar_t__ sk_family; scalar_t__ sk_prot; } ;


 scalar_t__ AF_INET6 ;
 int TLSV4 ;
 int TLSV6 ;
 int build_protos (int ,scalar_t__) ;
 scalar_t__ likely (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ saved_tcpv4_prot ;
 scalar_t__ saved_tcpv6_prot ;
 scalar_t__ smp_load_acquire (scalar_t__*) ;
 int smp_store_release (scalar_t__*,scalar_t__) ;
 int tcpv4_prot_mutex ;
 int tcpv6_prot_mutex ;
 int * tls_prots ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void tls_build_proto(struct sock *sk)
{
 int ip_ver = sk->sk_family == AF_INET6 ? TLSV6 : TLSV4;


 if (ip_ver == TLSV6 &&
     unlikely(sk->sk_prot != smp_load_acquire(&saved_tcpv6_prot))) {
  mutex_lock(&tcpv6_prot_mutex);
  if (likely(sk->sk_prot != saved_tcpv6_prot)) {
   build_protos(tls_prots[TLSV6], sk->sk_prot);
   smp_store_release(&saved_tcpv6_prot, sk->sk_prot);
  }
  mutex_unlock(&tcpv6_prot_mutex);
 }

 if (ip_ver == TLSV4 &&
     unlikely(sk->sk_prot != smp_load_acquire(&saved_tcpv4_prot))) {
  mutex_lock(&tcpv4_prot_mutex);
  if (likely(sk->sk_prot != saved_tcpv4_prot)) {
   build_protos(tls_prots[TLSV4], sk->sk_prot);
   smp_store_release(&saved_tcpv4_prot, sk->sk_prot);
  }
  mutex_unlock(&tcpv4_prot_mutex);
 }
}
