
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rmap_walk_control {struct page* arg; int rmap_one; } ;
struct page {int dummy; } ;


 int remove_migration_pte ;
 int rmap_walk (struct page*,struct rmap_walk_control*) ;
 int rmap_walk_locked (struct page*,struct rmap_walk_control*) ;

void remove_migration_ptes(struct page *old, struct page *new, bool locked)
{
 struct rmap_walk_control rwc = {
  .rmap_one = remove_migration_pte,
  .arg = old,
 };

 if (locked)
  rmap_walk_locked(new, &rwc);
 else
  rmap_walk(new, &rwc);
}
