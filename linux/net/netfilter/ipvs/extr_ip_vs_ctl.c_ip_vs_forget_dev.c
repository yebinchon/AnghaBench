
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int name; } ;
struct ip_vs_dest_dst {TYPE_1__* dst_cache; } ;
struct ip_vs_dest {int dst_lock; int refcnt; int port; int addr; int af; int dest_dst; } ;
struct TYPE_2__ {struct net_device* dev; } ;


 int IP_VS_DBG_ADDR (int ,int *) ;
 int IP_VS_DBG_BUF (int,char*,int ,int ,int ,int ) ;
 int __ip_vs_dst_cache_reset (struct ip_vs_dest*) ;
 int ntohs (int ) ;
 struct ip_vs_dest_dst* rcu_dereference_protected (int ,int) ;
 int refcount_read (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static inline void
ip_vs_forget_dev(struct ip_vs_dest *dest, struct net_device *dev)
{
 struct ip_vs_dest_dst *dest_dst;

 spin_lock_bh(&dest->dst_lock);
 dest_dst = rcu_dereference_protected(dest->dest_dst, 1);
 if (dest_dst && dest_dst->dst_cache->dev == dev) {
  IP_VS_DBG_BUF(3, "Reset dev:%s dest %s:%u ,dest->refcnt=%d\n",
         dev->name,
         IP_VS_DBG_ADDR(dest->af, &dest->addr),
         ntohs(dest->port),
         refcount_read(&dest->refcnt));
  __ip_vs_dst_cache_reset(dest);
 }
 spin_unlock_bh(&dest->dst_lock);

}
