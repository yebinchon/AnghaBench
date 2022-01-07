
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mount {int mnt_slave_list; } ;


 int IS_MNT_NEW (struct mount*) ;
 struct mount* last_slave (struct mount*) ;
 int list_empty (int *) ;

__attribute__((used)) static struct mount *skip_propagation_subtree(struct mount *m,
      struct mount *origin)
{




 if (!IS_MNT_NEW(m) && !list_empty(&m->mnt_slave_list))
  m = last_slave(m);

 return m;
}
