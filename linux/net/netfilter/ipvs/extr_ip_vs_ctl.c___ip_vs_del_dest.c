
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netns_ipvs {int dest_trash_lock; int dest_trash; int dest_trash_timer; } ;
struct ip_vs_dest {scalar_t__ idle_start; int t_list; int refcnt; int port; int addr; int af; int stats; } ;


 int IP_VS_DBG_ADDR (int ,int *) ;
 int IP_VS_DBG_BUF (int,char*,int ,int ,int ) ;
 int IP_VS_DEST_TRASH_PERIOD ;
 int ip_vs_rs_unhash (struct ip_vs_dest*) ;
 int ip_vs_stop_estimator (struct netns_ipvs*,int *) ;
 scalar_t__ jiffies ;
 int list_add (int *,int *) ;
 scalar_t__ list_empty (int *) ;
 int mod_timer (int *,scalar_t__) ;
 int ntohs (int ) ;
 int refcount_read (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void __ip_vs_del_dest(struct netns_ipvs *ipvs, struct ip_vs_dest *dest,
        bool cleanup)
{
 ip_vs_stop_estimator(ipvs, &dest->stats);




 ip_vs_rs_unhash(dest);

 spin_lock_bh(&ipvs->dest_trash_lock);
 IP_VS_DBG_BUF(3, "Moving dest %s:%u into trash, dest->refcnt=%d\n",
        IP_VS_DBG_ADDR(dest->af, &dest->addr), ntohs(dest->port),
        refcount_read(&dest->refcnt));
 if (list_empty(&ipvs->dest_trash) && !cleanup)
  mod_timer(&ipvs->dest_trash_timer,
     jiffies + (IP_VS_DEST_TRASH_PERIOD >> 1));

 list_add(&dest->t_list, &ipvs->dest_trash);
 dest->idle_start = 0;
 spin_unlock_bh(&ipvs->dest_trash_lock);
}
