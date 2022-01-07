
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct ip_mreqn {int dummy; } ;


 int __ip_mc_join_group (struct sock*,struct ip_mreqn*,unsigned int) ;

int ip_mc_join_group_ssm(struct sock *sk, struct ip_mreqn *imr,
    unsigned int mode)
{
 return __ip_mc_join_group(sk, imr, mode);
}
