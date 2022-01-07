
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct clip_vcc {struct clip_vcc* next; scalar_t__ xoff; struct atmarp_entry* entry; } ;
struct atmarp_entry {TYPE_1__* neigh; struct clip_vcc* vccs; } ;
struct TYPE_2__ {int used; } ;


 int jiffies ;
 int pr_debug (char*,struct clip_vcc*,struct atmarp_entry*,TYPE_1__*) ;

__attribute__((used)) static void link_vcc(struct clip_vcc *clip_vcc, struct atmarp_entry *entry)
{
 pr_debug("%p to entry %p (neigh %p)\n", clip_vcc, entry, entry->neigh);
 clip_vcc->entry = entry;
 clip_vcc->xoff = 0;
 clip_vcc->next = entry->vccs;
 entry->vccs = clip_vcc;
 entry->neigh->used = jiffies;
}
