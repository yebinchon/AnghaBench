
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip6_tnl_encap_ops {int dummy; } ;


 int ERANGE ;
 unsigned int MAX_IPTUN_ENCAP_OPS ;
 struct ip6_tnl_encap_ops const* cmpxchg (struct ip6_tnl_encap_ops const**,struct ip6_tnl_encap_ops const*,int *) ;
 int * ip6tun_encaps ;
 int synchronize_net () ;

int ip6_tnl_encap_del_ops(const struct ip6_tnl_encap_ops *ops,
     unsigned int num)
{
 int ret;

 if (num >= MAX_IPTUN_ENCAP_OPS)
  return -ERANGE;

 ret = (cmpxchg((const struct ip6_tnl_encap_ops **)
         &ip6tun_encaps[num],
         ops, ((void*)0)) == ops) ? 0 : -1;

 synchronize_net();

 return ret;
}
