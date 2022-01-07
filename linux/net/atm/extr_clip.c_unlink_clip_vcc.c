
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct clip_vcc {scalar_t__ xoff; struct atmarp_entry* entry; struct clip_vcc* next; } ;
struct atmarp_entry {TYPE_1__* neigh; void* expires; struct clip_vcc* vccs; } ;
struct TYPE_2__ {int dev; void* used; } ;


 int NEIGH_UPDATE_F_ADMIN ;
 int NUD_NONE ;
 void* jiffies ;
 int neigh_update (TYPE_1__*,int *,int ,int ,int ) ;
 int netif_tx_lock_bh (int ) ;
 int netif_tx_unlock_bh (int ) ;
 int netif_wake_queue (int ) ;
 int pr_crit (char*,...) ;

__attribute__((used)) static void unlink_clip_vcc(struct clip_vcc *clip_vcc)
{
 struct atmarp_entry *entry = clip_vcc->entry;
 struct clip_vcc **walk;

 if (!entry) {
  pr_crit("!clip_vcc->entry (clip_vcc %p)\n", clip_vcc);
  return;
 }
 netif_tx_lock_bh(entry->neigh->dev);
 entry->neigh->used = jiffies;
 for (walk = &entry->vccs; *walk; walk = &(*walk)->next)
  if (*walk == clip_vcc) {
   int error;

   *walk = clip_vcc->next;
   clip_vcc->entry = ((void*)0);
   if (clip_vcc->xoff)
    netif_wake_queue(entry->neigh->dev);
   if (entry->vccs)
    goto out;
   entry->expires = jiffies - 1;

   error = neigh_update(entry->neigh, ((void*)0), NUD_NONE,
          NEIGH_UPDATE_F_ADMIN, 0);
   if (error)
    pr_crit("neigh_update failed with %d\n", error);
   goto out;
  }
 pr_crit("ATMARP: failed (entry %p, vcc 0x%p)\n", entry, clip_vcc);
out:
 netif_tx_unlock_bh(entry->neigh->dev);
}
