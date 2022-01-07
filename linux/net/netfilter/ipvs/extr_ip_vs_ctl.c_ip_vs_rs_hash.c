
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netns_ipvs {int * rs_table; } ;
struct ip_vs_dest {int in_rs_table; int d_list; int addr; int af; int tun_port; int tun_type; int port; } ;
typedef int __be16 ;







 int IP_VS_DFWD_METHOD (struct ip_vs_dest*) ;
 int hlist_add_head_rcu (int *,int *) ;
 unsigned int ip_vs_rs_hashkey (int ,int *,int ) ;

__attribute__((used)) static void ip_vs_rs_hash(struct netns_ipvs *ipvs, struct ip_vs_dest *dest)
{
 unsigned int hash;
 __be16 port;

 if (dest->in_rs_table)
  return;

 switch (IP_VS_DFWD_METHOD(dest)) {
 case 132:
  port = dest->port;
  break;
 case 131:
  switch (dest->tun_type) {
  case 129:
   port = dest->tun_port;
   break;
  case 128:
  case 130:
   port = 0;
   break;
  default:
   return;
  }
  break;
 default:
  return;
 }





 hash = ip_vs_rs_hashkey(dest->af, &dest->addr, port);

 hlist_add_head_rcu(&dest->d_list, &ipvs->rs_table[hash]);
 dest->in_rs_table = 1;
}
