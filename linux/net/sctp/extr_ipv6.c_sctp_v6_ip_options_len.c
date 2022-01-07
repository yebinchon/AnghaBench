
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct ipv6_txoptions {int opt_flen; int opt_nflen; } ;
struct ipv6_pinfo {int opt; } ;


 struct ipv6_pinfo* inet6_sk (struct sock*) ;
 struct ipv6_txoptions* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

__attribute__((used)) static int sctp_v6_ip_options_len(struct sock *sk)
{
 struct ipv6_pinfo *np = inet6_sk(sk);
 struct ipv6_txoptions *opt;
 int len = 0;

 rcu_read_lock();
 opt = rcu_dereference(np->opt);
 if (opt)
  len = opt->opt_flen + opt->opt_nflen;

 rcu_read_unlock();
 return len;
}
