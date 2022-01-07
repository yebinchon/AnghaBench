
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;


 int INET_ECN_xmit (struct sock*) ;

__attribute__((used)) static void sctp_v4_ecn_capable(struct sock *sk)
{
 INET_ECN_xmit(sk);
}
