
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct TYPE_2__* next; } ;
struct mount {scalar_t__ mnt_group_id; TYPE_1__ mnt_slave; TYPE_1__ mnt_slave_list; struct mount* mnt_master; } ;


 int IS_MNT_NEW (struct mount*) ;
 struct mount* first_slave (struct mount*) ;
 int list_empty (TYPE_1__*) ;
 struct mount* next_peer (struct mount*) ;
 struct mount* next_slave (struct mount*) ;

__attribute__((used)) static struct mount *next_group(struct mount *m, struct mount *origin)
{
 while (1) {
  while (1) {
   struct mount *next;
   if (!IS_MNT_NEW(m) && !list_empty(&m->mnt_slave_list))
    return first_slave(m);
   next = next_peer(m);
   if (m->mnt_group_id == origin->mnt_group_id) {
    if (next == origin)
     return ((void*)0);
   } else if (m->mnt_slave.next != &next->mnt_slave)
    break;
   m = next;
  }

  while (1) {
   struct mount *master = m->mnt_master;
   if (m->mnt_slave.next != &master->mnt_slave_list)
    return next_slave(m);
   m = next_peer(master);
   if (master->mnt_group_id == origin->mnt_group_id)
    break;
   if (master->mnt_slave.next == &m->mnt_slave)
    break;
   m = master;
  }
  if (m == origin)
   return ((void*)0);
 }
}
