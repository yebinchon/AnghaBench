
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip_tunnel_encap_ops {int dummy; } ;


 int ERANGE ;
 unsigned int MAX_IPTUN_ENCAP_OPS ;
 struct ip_tunnel_encap_ops const* cmpxchg (struct ip_tunnel_encap_ops const**,struct ip_tunnel_encap_ops const*,int *) ;
 int * iptun_encaps ;
 int synchronize_net () ;

int ip_tunnel_encap_del_ops(const struct ip_tunnel_encap_ops *ops,
       unsigned int num)
{
 int ret;

 if (num >= MAX_IPTUN_ENCAP_OPS)
  return -ERANGE;

 ret = (cmpxchg((const struct ip_tunnel_encap_ops **)
         &iptun_encaps[num],
         ops, ((void*)0)) == ops) ? 0 : -1;

 synchronize_net();

 return ret;
}
