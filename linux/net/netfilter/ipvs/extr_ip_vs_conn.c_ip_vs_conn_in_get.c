
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef struct ip_vs_conn_param {scalar_t__ vport; int vaddr; int af; scalar_t__ cport; int caddr; int protocol; } const ip_vs_conn_param ;
struct ip_vs_conn {int dummy; } ;


 int IP_VS_DBG_ADDR (int ,int ) ;
 int IP_VS_DBG_BUF (int,char*,int ,int ,int ,int ,int ,char*) ;
 struct ip_vs_conn* __ip_vs_conn_in_get (struct ip_vs_conn_param const*) ;
 scalar_t__ atomic_read (int *) ;
 int ip_vs_conn_no_cport_cnt ;
 int ip_vs_proto_name (int ) ;
 int ntohs (scalar_t__) ;

struct ip_vs_conn *ip_vs_conn_in_get(const struct ip_vs_conn_param *p)
{
 struct ip_vs_conn *cp;

 cp = __ip_vs_conn_in_get(p);
 if (!cp && atomic_read(&ip_vs_conn_no_cport_cnt)) {
  struct ip_vs_conn_param cport_zero_p = *p;
  cport_zero_p.cport = 0;
  cp = __ip_vs_conn_in_get(&cport_zero_p);
 }

 IP_VS_DBG_BUF(9, "lookup/in %s %s:%d->%s:%d %s\n",
        ip_vs_proto_name(p->protocol),
        IP_VS_DBG_ADDR(p->af, p->caddr), ntohs(p->cport),
        IP_VS_DBG_ADDR(p->af, p->vaddr), ntohs(p->vport),
        cp ? "hit" : "not hit");

 return cp;
}
