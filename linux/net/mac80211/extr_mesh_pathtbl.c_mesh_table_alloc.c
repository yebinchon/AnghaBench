
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mesh_table {int walk_lock; int gates_lock; int entries; int walk_head; int known_gates; } ;


 int GFP_ATOMIC ;
 int INIT_HLIST_HEAD (int *) ;
 int atomic_set (int *,int ) ;
 struct mesh_table* kmalloc (int,int ) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static struct mesh_table *mesh_table_alloc(void)
{
 struct mesh_table *newtbl;

 newtbl = kmalloc(sizeof(struct mesh_table), GFP_ATOMIC);
 if (!newtbl)
  return ((void*)0);

 INIT_HLIST_HEAD(&newtbl->known_gates);
 INIT_HLIST_HEAD(&newtbl->walk_head);
 atomic_set(&newtbl->entries, 0);
 spin_lock_init(&newtbl->gates_lock);
 spin_lock_init(&newtbl->walk_lock);

 return newtbl;
}
