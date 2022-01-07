
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct mpoa_client {TYPE_4__* in_ops; TYPE_3__* eg_cache; int * in_cache; TYPE_2__* eg_ops; } ;
struct k_message {int type; } ;
struct atm_vcc {int dummy; } ;
typedef int in_cache_entry ;
struct TYPE_12__ {TYPE_1__* prev; TYPE_3__* next; struct atm_vcc* shortcut; } ;
typedef TYPE_5__ eg_cache_entry ;
struct TYPE_11__ {int (* put ) (int *) ;int * (* get_by_vcc ) (struct atm_vcc*,struct mpoa_client*) ;} ;
struct TYPE_10__ {TYPE_1__* prev; } ;
struct TYPE_9__ {int (* put ) (TYPE_5__*) ;} ;
struct TYPE_8__ {TYPE_3__* next; } ;


 int EPIPE ;
 int STOP_KEEP_ALIVE_SM ;
 int dprintk (char*) ;
 int msg_to_mpoad (struct k_message*,struct mpoa_client*) ;
 int stub1 (TYPE_5__*) ;
 int * stub2 (struct atm_vcc*,struct mpoa_client*) ;
 int stub3 (int *) ;
 int vcc_release_async (struct atm_vcc*,int ) ;

__attribute__((used)) static void eg_cache_remove_entry(eg_cache_entry *entry,
      struct mpoa_client *client)
{
 struct atm_vcc *vcc;
 struct k_message msg;

 vcc = entry->shortcut;
 dprintk("removing an egress entry.\n");
 if (entry->prev != ((void*)0))
  entry->prev->next = entry->next;
 else
  client->eg_cache = entry->next;
 if (entry->next != ((void*)0))
  entry->next->prev = entry->prev;
 client->eg_ops->put(entry);
 if (client->in_cache == ((void*)0) && client->eg_cache == ((void*)0)) {
  msg.type = STOP_KEEP_ALIVE_SM;
  msg_to_mpoad(&msg, client);
 }


 if (vcc != ((void*)0)) {
  in_cache_entry *in_entry = client->in_ops->get_by_vcc(vcc, client);
  if (in_entry != ((void*)0)) {
   client->in_ops->put(in_entry);
   return;
  }
  vcc_release_async(vcc, -EPIPE);
 }
}
