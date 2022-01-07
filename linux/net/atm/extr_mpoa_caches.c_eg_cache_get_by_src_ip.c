
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct mpoa_client {int egress_lock; TYPE_1__* eg_cache; } ;
struct TYPE_3__ {scalar_t__ latest_ip_addr; struct TYPE_3__* next; int use; } ;
typedef TYPE_1__ eg_cache_entry ;
typedef scalar_t__ __be32 ;


 int read_lock_irq (int *) ;
 int read_unlock_irq (int *) ;
 int refcount_inc (int *) ;

__attribute__((used)) static eg_cache_entry *eg_cache_get_by_src_ip(__be32 ipaddr,
           struct mpoa_client *mpc)
{
 eg_cache_entry *entry;

 read_lock_irq(&mpc->egress_lock);
 entry = mpc->eg_cache;
 while (entry != ((void*)0)) {
  if (entry->latest_ip_addr == ipaddr) {
   refcount_inc(&entry->use);
   read_unlock_irq(&mpc->egress_lock);
   return entry;
  }
  entry = entry->next;
 }
 read_unlock_irq(&mpc->egress_lock);

 return ((void*)0);
}
