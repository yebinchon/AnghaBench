
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct mpoa_client {int ingress_lock; TYPE_1__* in_cache; } ;
struct atm_vcc {int dummy; } ;
struct TYPE_3__ {struct TYPE_3__* next; int use; struct atm_vcc* shortcut; } ;
typedef TYPE_1__ in_cache_entry ;


 int read_lock_bh (int *) ;
 int read_unlock_bh (int *) ;
 int refcount_inc (int *) ;

__attribute__((used)) static in_cache_entry *in_cache_get_by_vcc(struct atm_vcc *vcc,
        struct mpoa_client *client)
{
 in_cache_entry *entry;

 read_lock_bh(&client->ingress_lock);
 entry = client->in_cache;
 while (entry != ((void*)0)) {
  if (entry->shortcut == vcc) {
   refcount_inc(&entry->use);
   read_unlock_bh(&client->ingress_lock);
   return entry;
  }
  entry = entry->next;
 }
 read_unlock_bh(&client->ingress_lock);

 return ((void*)0);
}
