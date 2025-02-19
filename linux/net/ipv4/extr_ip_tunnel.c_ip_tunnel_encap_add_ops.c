
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip_tunnel_encap_ops {int dummy; } ;


 int ERANGE ;
 unsigned int MAX_IPTUN_ENCAP_OPS ;
 int cmpxchg (struct ip_tunnel_encap_ops const**,int *,struct ip_tunnel_encap_ops const*) ;
 int * iptun_encaps ;

int ip_tunnel_encap_add_ops(const struct ip_tunnel_encap_ops *ops,
       unsigned int num)
{
 if (num >= MAX_IPTUN_ENCAP_OPS)
  return -ERANGE;

 return !cmpxchg((const struct ip_tunnel_encap_ops **)
   &iptun_encaps[num],
   ((void*)0), ops) ? 0 : -1;
}
