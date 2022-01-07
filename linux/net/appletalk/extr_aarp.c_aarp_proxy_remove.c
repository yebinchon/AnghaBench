
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct atalk_addr {int s_node; } ;
struct aarp_entry {scalar_t__ expires_at; } ;


 int AARP_HASH_SIZE ;
 struct aarp_entry* __aarp_find_entry (int ,struct net_device*,struct atalk_addr*) ;
 int aarp_lock ;
 scalar_t__ jiffies ;
 int * proxies ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

void aarp_proxy_remove(struct net_device *dev, struct atalk_addr *sa)
{
 int hash = sa->s_node % (AARP_HASH_SIZE - 1);
 struct aarp_entry *a;

 write_lock_bh(&aarp_lock);

 a = __aarp_find_entry(proxies[hash], dev, sa);
 if (a)
  a->expires_at = jiffies - 1;

 write_unlock_bh(&aarp_lock);
}
