
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct mpoa_client {int ingress_lock; TYPE_2__* in_cache; } ;
struct TYPE_4__ {scalar_t__ in_dst_ip; } ;
struct TYPE_5__ {struct TYPE_5__* next; int use; TYPE_1__ ctrl_info; } ;
typedef TYPE_2__ in_cache_entry ;
typedef scalar_t__ __be32 ;


 int read_lock_bh (int *) ;
 int read_unlock_bh (int *) ;
 int refcount_inc (int *) ;

__attribute__((used)) static in_cache_entry *in_cache_get(__be32 dst_ip,
        struct mpoa_client *client)
{
 in_cache_entry *entry;

 read_lock_bh(&client->ingress_lock);
 entry = client->in_cache;
 while (entry != ((void*)0)) {
  if (entry->ctrl_info.in_dst_ip == dst_ip) {
   refcount_inc(&entry->use);
   read_unlock_bh(&client->ingress_lock);
   return entry;
  }
  entry = entry->next;
 }
 read_unlock_bh(&client->ingress_lock);

 return ((void*)0);
}
