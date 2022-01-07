
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned char lsap; } ;
struct llc_sap {int (* rcv_func ) (struct sk_buff*,struct net_device*,struct packet_type*,struct net_device*) ;int node; TYPE_1__ laddr; } ;


 scalar_t__ __llc_sap_find (unsigned char) ;
 int list_add_tail_rcu (int *,int *) ;
 struct llc_sap* llc_sap_alloc () ;
 int llc_sap_list ;
 int llc_sap_list_lock ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

struct llc_sap *llc_sap_open(unsigned char lsap,
        int (*func)(struct sk_buff *skb,
      struct net_device *dev,
      struct packet_type *pt,
      struct net_device *orig_dev))
{
 struct llc_sap *sap = ((void*)0);

 spin_lock_bh(&llc_sap_list_lock);
 if (__llc_sap_find(lsap))
  goto out;
 sap = llc_sap_alloc();
 if (!sap)
  goto out;
 sap->laddr.lsap = lsap;
 sap->rcv_func = func;
 list_add_tail_rcu(&sap->node, &llc_sap_list);
out:
 spin_unlock_bh(&llc_sap_list_lock);
 return sap;
}
