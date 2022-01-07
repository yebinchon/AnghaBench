
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip_vs_proto_data {int pp; int appcnt; } ;
struct ip_vs_dest {int dummy; } ;
struct ip_vs_conn {scalar_t__ af; int protocol; int ipvs; int * packet_xmit; int lock; scalar_t__ app; scalar_t__ dest; int flags; int fwmark; int vport; int vaddr; int dport; int daddr; } ;


 scalar_t__ AF_INET6 ;
 scalar_t__ atomic_read (int *) ;
 int ip_vs_bind_app (struct ip_vs_conn*,int ) ;
 int ip_vs_bind_dest (struct ip_vs_conn*,struct ip_vs_dest*) ;
 int ip_vs_bind_xmit (struct ip_vs_conn*) ;
 int ip_vs_bind_xmit_v6 (struct ip_vs_conn*) ;
 struct ip_vs_dest* ip_vs_find_dest (int ,scalar_t__,scalar_t__,int *,int ,int *,int ,int ,int ,int ) ;
 struct ip_vs_proto_data* ip_vs_proto_data_get (int ,int ) ;
 int ip_vs_unbind_app (struct ip_vs_conn*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void ip_vs_try_bind_dest(struct ip_vs_conn *cp)
{
 struct ip_vs_dest *dest;

 rcu_read_lock();






 dest = ip_vs_find_dest(cp->ipvs, cp->af, cp->af, &cp->daddr,
          cp->dport, &cp->vaddr, cp->vport,
          cp->protocol, cp->fwmark, cp->flags);
 if (dest) {
  struct ip_vs_proto_data *pd;

  spin_lock_bh(&cp->lock);
  if (cp->dest) {
   spin_unlock_bh(&cp->lock);
   rcu_read_unlock();
   return;
  }



  if (cp->app)
   ip_vs_unbind_app(cp);

  ip_vs_bind_dest(cp, dest);
  spin_unlock_bh(&cp->lock);


  cp->packet_xmit = ((void*)0);





   ip_vs_bind_xmit(cp);

  pd = ip_vs_proto_data_get(cp->ipvs, cp->protocol);
  if (pd && atomic_read(&pd->appcnt))
   ip_vs_bind_app(cp, pd->pp);
 }
 rcu_read_unlock();
}
