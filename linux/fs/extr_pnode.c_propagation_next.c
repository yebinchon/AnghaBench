
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * next; } ;
struct mount {int mnt_slave_list; TYPE_1__ mnt_slave; struct mount* mnt_master; } ;


 int IS_MNT_NEW (struct mount*) ;
 struct mount* first_slave (struct mount*) ;
 int list_empty (int *) ;
 struct mount* next_peer (struct mount*) ;
 struct mount* next_slave (struct mount*) ;

__attribute__((used)) static struct mount *propagation_next(struct mount *m,
      struct mount *origin)
{

 if (!IS_MNT_NEW(m) && !list_empty(&m->mnt_slave_list))
  return first_slave(m);

 while (1) {
  struct mount *master = m->mnt_master;

  if (master == origin->mnt_master) {
   struct mount *next = next_peer(m);
   return (next == origin) ? ((void*)0) : next;
  } else if (m->mnt_slave.next != &master->mnt_slave_list)
   return next_slave(m);


  m = master;
 }
}
