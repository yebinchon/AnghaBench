
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int dummy; } ;
struct TYPE_2__ {int * icmp_sk; } ;
struct net {TYPE_1__ ipv6; } ;


 struct sock* this_cpu_read (int ) ;

__attribute__((used)) static struct sock *icmpv6_sk(struct net *net)
{
 return this_cpu_read(*net->ipv6.icmp_sk);
}
