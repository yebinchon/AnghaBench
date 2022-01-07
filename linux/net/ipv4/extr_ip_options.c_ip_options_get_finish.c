
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net {int dummy; } ;
struct TYPE_2__ {int optlen; int * __data; } ;
struct ip_options_rcu {TYPE_1__ opt; } ;


 int EINVAL ;
 int IPOPT_END ;
 scalar_t__ ip_options_compile (struct net*,TYPE_1__*,int *) ;
 int kfree (struct ip_options_rcu*) ;

__attribute__((used)) static int ip_options_get_finish(struct net *net, struct ip_options_rcu **optp,
     struct ip_options_rcu *opt, int optlen)
{
 while (optlen & 3)
  opt->opt.__data[optlen++] = IPOPT_END;
 opt->opt.optlen = optlen;
 if (optlen && ip_options_compile(net, &opt->opt, ((void*)0))) {
  kfree(opt);
  return -EINVAL;
 }
 kfree(*optp);
 *optp = opt;
 return 0;
}
