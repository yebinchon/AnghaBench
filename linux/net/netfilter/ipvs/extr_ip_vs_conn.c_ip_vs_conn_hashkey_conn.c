
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip_vs_conn_param {int pe_data_len; int pe_data; scalar_t__ pe; } ;
struct ip_vs_conn {int pe_data_len; int pe_data; scalar_t__ pe; int cport; int caddr; int protocol; int af; int ipvs; } ;


 int ip_vs_conn_fill_param (int ,int ,int ,int *,int ,int *,int ,struct ip_vs_conn_param*) ;
 unsigned int ip_vs_conn_hashkey_param (struct ip_vs_conn_param*,int) ;

__attribute__((used)) static unsigned int ip_vs_conn_hashkey_conn(const struct ip_vs_conn *cp)
{
 struct ip_vs_conn_param p;

 ip_vs_conn_fill_param(cp->ipvs, cp->af, cp->protocol,
         &cp->caddr, cp->cport, ((void*)0), 0, &p);

 if (cp->pe) {
  p.pe = cp->pe;
  p.pe_data = cp->pe_data;
  p.pe_data_len = cp->pe_data_len;
 }

 return ip_vs_conn_hashkey_param(&p, 0);
}
