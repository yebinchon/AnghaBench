
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip_vs_dest {scalar_t__ l_threshold; int flags; int u_threshold; int persistconns; int activeconns; int inactconns; int refcnt; } ;
struct ip_vs_conn {int flags; int refcnt; int state; int dport; int daddr; int daf; int vport; int vaddr; int af; int cport; int caddr; int protocol; struct ip_vs_dest* dest; } ;


 int IP_VS_CONN_F_INACTIVE ;
 int IP_VS_CONN_F_TEMPLATE ;
 int IP_VS_DBG_ADDR (int ,int *) ;
 int IP_VS_DBG_BUF (int,char*,int ,int ,int ,int ,int ,int ,int ,int ,int ,int,int ,int ) ;
 int IP_VS_DEST_F_OVERLOAD ;
 int atomic_dec (int *) ;
 int ip_vs_dest_put (struct ip_vs_dest*) ;
 int ip_vs_dest_totalconns (struct ip_vs_dest*) ;
 int ip_vs_fwd_tag (struct ip_vs_conn*) ;
 int ip_vs_proto_name (int ) ;
 int ntohs (int ) ;
 int refcount_read (int *) ;

__attribute__((used)) static inline void ip_vs_unbind_dest(struct ip_vs_conn *cp)
{
 struct ip_vs_dest *dest = cp->dest;

 if (!dest)
  return;

 IP_VS_DBG_BUF(7, "Unbind-dest %s c:%s:%d v:%s:%d "
        "d:%s:%d fwd:%c s:%u conn->flags:%X conn->refcnt:%d "
        "dest->refcnt:%d\n",
        ip_vs_proto_name(cp->protocol),
        IP_VS_DBG_ADDR(cp->af, &cp->caddr), ntohs(cp->cport),
        IP_VS_DBG_ADDR(cp->af, &cp->vaddr), ntohs(cp->vport),
        IP_VS_DBG_ADDR(cp->daf, &cp->daddr), ntohs(cp->dport),
        ip_vs_fwd_tag(cp), cp->state,
        cp->flags, refcount_read(&cp->refcnt),
        refcount_read(&dest->refcnt));


 if (!(cp->flags & IP_VS_CONN_F_TEMPLATE)) {


  if (cp->flags & IP_VS_CONN_F_INACTIVE) {
   atomic_dec(&dest->inactconns);
  } else {
   atomic_dec(&dest->activeconns);
  }
 } else {


  atomic_dec(&dest->persistconns);
 }

 if (dest->l_threshold != 0) {
  if (ip_vs_dest_totalconns(dest) < dest->l_threshold)
   dest->flags &= ~IP_VS_DEST_F_OVERLOAD;
 } else if (dest->u_threshold != 0) {
  if (ip_vs_dest_totalconns(dest) * 4 < dest->u_threshold * 3)
   dest->flags &= ~IP_VS_DEST_F_OVERLOAD;
 } else {
  if (dest->flags & IP_VS_DEST_F_OVERLOAD)
   dest->flags &= ~IP_VS_DEST_F_OVERLOAD;
 }

 ip_vs_dest_put(dest);
}
