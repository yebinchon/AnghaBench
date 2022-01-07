
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union nf_inet_addr {int dummy; } nf_inet_addr ;
struct sk_buff {int dummy; } ;
struct ip_vs_service {int pe; int af; int ipvs; } ;
struct ip_vs_conn_param {TYPE_1__* pe; } ;
typedef int __be16 ;
struct TYPE_2__ {int (* fill_param ) (struct ip_vs_conn_param*,struct sk_buff*) ;} ;


 int ip_vs_conn_fill_param (int ,int ,int,union nf_inet_addr const*,int ,union nf_inet_addr const*,int ,struct ip_vs_conn_param*) ;
 TYPE_1__* rcu_dereference (int ) ;
 int stub1 (struct ip_vs_conn_param*,struct sk_buff*) ;

__attribute__((used)) static inline int
ip_vs_conn_fill_param_persist(const struct ip_vs_service *svc,
         struct sk_buff *skb, int protocol,
         const union nf_inet_addr *caddr, __be16 cport,
         const union nf_inet_addr *vaddr, __be16 vport,
         struct ip_vs_conn_param *p)
{
 ip_vs_conn_fill_param(svc->ipvs, svc->af, protocol, caddr, cport, vaddr,
         vport, p);
 p->pe = rcu_dereference(svc->pe);
 if (p->pe && p->pe->fill_param)
  return p->pe->fill_param(p, skb);

 return 0;
}
