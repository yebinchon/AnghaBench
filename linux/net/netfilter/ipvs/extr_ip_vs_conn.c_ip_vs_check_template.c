
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netns_ipvs {int dummy; } ;
struct ip_vs_dest {int flags; } ;
struct ip_vs_conn {scalar_t__ cport; scalar_t__ vport; scalar_t__ dport; int daddr; int daf; int vaddr; int af; int caddr; int protocol; struct netns_ipvs* ipvs; struct ip_vs_dest* dest; } ;


 int IP_VS_DBG_ADDR (int ,int *) ;
 int IP_VS_DBG_BUF (int,char*,int ,int ,int ,int ,int ,int ,int ) ;
 int IP_VS_DEST_F_AVAILABLE ;
 int __ip_vs_conn_put (struct ip_vs_conn*) ;
 scalar_t__ expire_quiescent_template (struct netns_ipvs*,struct ip_vs_dest*) ;
 scalar_t__ htons (int) ;
 int ip_vs_conn_hash (struct ip_vs_conn*) ;
 scalar_t__ ip_vs_conn_unhash (struct ip_vs_conn*) ;
 int ip_vs_proto_name (int ) ;
 int ntohs (scalar_t__) ;

int ip_vs_check_template(struct ip_vs_conn *ct, struct ip_vs_dest *cdest)
{
 struct ip_vs_dest *dest = ct->dest;
 struct netns_ipvs *ipvs = ct->ipvs;




 if ((dest == ((void*)0)) ||
     !(dest->flags & IP_VS_DEST_F_AVAILABLE) ||
     expire_quiescent_template(ipvs, dest) ||
     (cdest && (dest != cdest))) {
  IP_VS_DBG_BUF(9, "check_template: dest not available for "
         "protocol %s s:%s:%d v:%s:%d "
         "-> d:%s:%d\n",
         ip_vs_proto_name(ct->protocol),
         IP_VS_DBG_ADDR(ct->af, &ct->caddr),
         ntohs(ct->cport),
         IP_VS_DBG_ADDR(ct->af, &ct->vaddr),
         ntohs(ct->vport),
         IP_VS_DBG_ADDR(ct->daf, &ct->daddr),
         ntohs(ct->dport));




  if (ct->vport != htons(0xffff)) {
   if (ip_vs_conn_unhash(ct)) {
    ct->dport = htons(0xffff);
    ct->vport = htons(0xffff);
    ct->cport = 0;
    ip_vs_conn_hash(ct);
   }
  }





  __ip_vs_conn_put(ct);
  return 0;
 }
 return 1;
}
