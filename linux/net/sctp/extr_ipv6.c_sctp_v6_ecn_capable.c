
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int dummy; } ;
struct TYPE_2__ {int tclass; } ;


 int INET_ECN_ECT_0 ;
 TYPE_1__* inet6_sk (struct sock*) ;

__attribute__((used)) static void sctp_v6_ecn_capable(struct sock *sk)
{
 inet6_sk(sk)->tclass |= INET_ECN_ECT_0;
}
