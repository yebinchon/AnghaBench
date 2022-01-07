
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int mark; TYPE_1__* dev; } ;
struct ip_vs_service {int flags; scalar_t__ port; int af; int ipvs; int scheduler; int fwmark; } ;
struct ip_vs_scheduler {struct ip_vs_dest* (* schedule ) (struct ip_vs_service*,struct sk_buff*,struct ip_vs_iphdr*) ;} ;
struct ip_vs_protocol {int conn_in_get; } ;
struct ip_vs_proto_data {struct ip_vs_protocol* pp; } ;
struct ip_vs_iphdr {scalar_t__ protocol; int off; int hdr_flags; int saddr; int daddr; int len; } ;
struct ip_vs_dest {scalar_t__ port; int addr; int af; } ;
struct ip_vs_conn_param {int dummy; } ;
struct ip_vs_conn {int refcnt; int flags; int dport; int daddr; int daf; int vport; int vaddr; int af; int cport; int caddr; } ;
typedef int _ports ;
typedef scalar_t__ __be16 ;
struct TYPE_2__ {int flags; } ;


 scalar_t__ FTPDATA ;
 int IFF_LOOPBACK ;
 struct ip_vs_conn* INDIRECT_CALL_1 (int ,int ,int ,int ,struct sk_buff*,struct ip_vs_iphdr*) ;
 scalar_t__ IPPROTO_UDP ;
 unsigned int IP_VS_CONN_F_ONE_PACKET ;
 int IP_VS_DBG (int,char*) ;
 int IP_VS_DBG_ADDR (int ,int *) ;
 int IP_VS_DBG_BUF (int,char*,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int IP_VS_DBG_PKT (int,int ,struct ip_vs_protocol*,struct sk_buff*,int ,char*) ;
 int IP_VS_HDR_INVERSE ;
 int IP_VS_SVC_F_ONEPACKET ;
 int IP_VS_SVC_F_PERSISTENT ;
 int __ip_vs_conn_put (struct ip_vs_conn*) ;
 scalar_t__* frag_safe_skb_hp (struct sk_buff*,int ,int,scalar_t__*) ;
 int ip_vs_conn_fill_param (int ,int ,scalar_t__,void const*,scalar_t__,void const*,scalar_t__,struct ip_vs_conn_param*) ;
 int ip_vs_conn_in_get_proto ;
 struct ip_vs_conn* ip_vs_conn_new (struct ip_vs_conn_param*,int ,int *,scalar_t__,unsigned int,struct ip_vs_dest*,int ) ;
 int ip_vs_conn_stats (struct ip_vs_conn*,struct ip_vs_service*) ;
 int ip_vs_fwd_tag (struct ip_vs_conn*) ;
 int ip_vs_iph_inverse (struct ip_vs_iphdr*) ;
 struct ip_vs_conn* ip_vs_sched_persist (struct ip_vs_service*,struct sk_buff*,scalar_t__,scalar_t__,int*,struct ip_vs_iphdr*) ;
 scalar_t__ likely (int) ;
 int ntohs (int ) ;
 int pr_err (char*) ;
 struct ip_vs_scheduler* rcu_dereference (int ) ;
 int refcount_read (int *) ;
 int smp_rmb () ;
 struct ip_vs_dest* stub1 (struct ip_vs_service*,struct sk_buff*,struct ip_vs_iphdr*) ;

struct ip_vs_conn *
ip_vs_schedule(struct ip_vs_service *svc, struct sk_buff *skb,
        struct ip_vs_proto_data *pd, int *ignored,
        struct ip_vs_iphdr *iph)
{
 struct ip_vs_protocol *pp = pd->pp;
 struct ip_vs_conn *cp = ((void*)0);
 struct ip_vs_scheduler *sched;
 struct ip_vs_dest *dest;
 __be16 _ports[2], *pptr, cport, vport;
 const void *caddr, *vaddr;
 unsigned int flags;

 *ignored = 1;



 pptr = frag_safe_skb_hp(skb, iph->len, sizeof(_ports), _ports);
 if (pptr == ((void*)0))
  return ((void*)0);

 if (likely(!ip_vs_iph_inverse(iph))) {
  cport = pptr[0];
  caddr = &iph->saddr;
  vport = pptr[1];
  vaddr = &iph->daddr;
 } else {
  cport = pptr[1];
  caddr = &iph->daddr;
  vport = pptr[0];
  vaddr = &iph->saddr;
 }







 if (cport == FTPDATA) {
  IP_VS_DBG_PKT(12, svc->af, pp, skb, iph->off,
         "Not scheduling FTPDATA");
  return ((void*)0);
 }




 if ((!skb->dev || skb->dev->flags & IFF_LOOPBACK)) {
  iph->hdr_flags ^= IP_VS_HDR_INVERSE;
  cp = INDIRECT_CALL_1(pp->conn_in_get,
         ip_vs_conn_in_get_proto, svc->ipvs,
         svc->af, skb, iph);
  iph->hdr_flags ^= IP_VS_HDR_INVERSE;

  if (cp) {
   IP_VS_DBG_PKT(12, svc->af, pp, skb, iph->off,
          "Not scheduling reply for existing"
          " connection");
   __ip_vs_conn_put(cp);
   return ((void*)0);
  }
 }




 if (svc->flags & IP_VS_SVC_F_PERSISTENT)
  return ip_vs_sched_persist(svc, skb, cport, vport, ignored,
        iph);

 *ignored = 0;




 if (!svc->fwmark && vport != svc->port) {
  if (!svc->port)
   pr_err("Schedule: port zero only supported "
          "in persistent services, "
          "check your ipvs configuration\n");
  return ((void*)0);
 }

 sched = rcu_dereference(svc->scheduler);
 if (sched) {

  smp_rmb();
  dest = sched->schedule(svc, skb, iph);
 } else {
  dest = ((void*)0);
 }
 if (dest == ((void*)0)) {
  IP_VS_DBG(1, "Schedule: no dest found.\n");
  return ((void*)0);
 }

 flags = (svc->flags & IP_VS_SVC_F_ONEPACKET
   && iph->protocol == IPPROTO_UDP) ?
  IP_VS_CONN_F_ONE_PACKET : 0;




 {
  struct ip_vs_conn_param p;

  ip_vs_conn_fill_param(svc->ipvs, svc->af, iph->protocol,
          caddr, cport, vaddr, vport, &p);
  cp = ip_vs_conn_new(&p, dest->af, &dest->addr,
        dest->port ? dest->port : vport,
        flags, dest, skb->mark);
  if (!cp) {
   *ignored = -1;
   return ((void*)0);
  }
 }

 IP_VS_DBG_BUF(6, "Schedule fwd:%c c:%s:%u v:%s:%u "
        "d:%s:%u conn->flags:%X conn->refcnt:%d\n",
        ip_vs_fwd_tag(cp),
        IP_VS_DBG_ADDR(cp->af, &cp->caddr), ntohs(cp->cport),
        IP_VS_DBG_ADDR(cp->af, &cp->vaddr), ntohs(cp->vport),
        IP_VS_DBG_ADDR(cp->daf, &cp->daddr), ntohs(cp->dport),
        cp->flags, refcount_read(&cp->refcnt));

 ip_vs_conn_stats(cp, svc);
 return cp;
}
