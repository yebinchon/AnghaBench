
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net {int dummy; } ;
struct TYPE_2__ {int __data; } ;
struct ip_options_rcu {TYPE_1__ opt; } ;


 int ENOMEM ;
 struct ip_options_rcu* ip_options_get_alloc (int) ;
 int ip_options_get_finish (struct net*,struct ip_options_rcu**,struct ip_options_rcu*,int) ;
 int memcpy (int ,unsigned char*,int) ;

int ip_options_get(struct net *net, struct ip_options_rcu **optp,
     unsigned char *data, int optlen)
{
 struct ip_options_rcu *opt = ip_options_get_alloc(optlen);

 if (!opt)
  return -ENOMEM;
 if (optlen)
  memcpy(opt->opt.__data, data, optlen);
 return ip_options_get_finish(net, optp, opt, optlen);
}
