
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ time64_t ;
struct mpoa_client {int ingress_lock; TYPE_2__* in_ops; TYPE_3__* in_cache; } ;
struct TYPE_5__ {scalar_t__ holding_time; int in_dst_ip; } ;
struct TYPE_7__ {scalar_t__ time; TYPE_1__ ctrl_info; struct TYPE_7__* next; scalar_t__ count; } ;
typedef TYPE_3__ in_cache_entry ;
struct TYPE_6__ {int (* remove_entry ) (TYPE_3__*,struct mpoa_client*) ;} ;


 int dprintk (char*,int *) ;
 scalar_t__ ktime_get_seconds () ;
 int stub1 (TYPE_3__*,struct mpoa_client*) ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

__attribute__((used)) static void clear_count_and_expired(struct mpoa_client *client)
{
 in_cache_entry *entry, *next_entry;
 time64_t now;

 now = ktime_get_seconds();

 write_lock_bh(&client->ingress_lock);
 entry = client->in_cache;
 while (entry != ((void*)0)) {
  entry->count = 0;
  next_entry = entry->next;
  if ((now - entry->time) > entry->ctrl_info.holding_time) {
   dprintk("holding time expired, ip = %pI4\n",
    &entry->ctrl_info.in_dst_ip);
   client->in_ops->remove_entry(entry, client);
  }
  entry = next_entry;
 }
 write_unlock_bh(&client->ingress_lock);
}
