
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket_smack {struct smack_known* smk_out; struct smack_known* smk_in; } ;
struct socket {int dummy; } ;
struct sock {scalar_t__ sk_family; struct socket_smack* sk_security; } ;
struct smack_known {int dummy; } ;


 scalar_t__ PF_INET ;
 scalar_t__ PF_INET6 ;
 struct smack_known* smk_of_current () ;

__attribute__((used)) static void smack_sock_graft(struct sock *sk, struct socket *parent)
{
 struct socket_smack *ssp;
 struct smack_known *skp = smk_of_current();

 if (sk == ((void*)0) ||
     (sk->sk_family != PF_INET && sk->sk_family != PF_INET6))
  return;

 ssp = sk->sk_security;
 ssp->smk_in = skp;
 ssp->smk_out = skp;

}
