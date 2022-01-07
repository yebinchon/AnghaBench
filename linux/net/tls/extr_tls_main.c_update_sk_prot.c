
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tls_context {size_t tx_conf; size_t rx_conf; } ;
struct sock {scalar_t__ sk_family; int * sk_prot; } ;


 scalar_t__ AF_INET6 ;
 int TLSV4 ;
 int TLSV6 ;
 int *** tls_prots ;

__attribute__((used)) static void update_sk_prot(struct sock *sk, struct tls_context *ctx)
{
 int ip_ver = sk->sk_family == AF_INET6 ? TLSV6 : TLSV4;

 sk->sk_prot = &tls_prots[ip_ver][ctx->tx_conf][ctx->rx_conf];
}
