
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ila_map {int next; } ;


 int ila_release (struct ila_map*) ;
 struct ila_map* rcu_access_pointer (int ) ;

__attribute__((used)) static void ila_free_node(struct ila_map *ila)
{
 struct ila_map *next;


 while (ila) {
  next = rcu_access_pointer(ila->next);
  ila_release(ila);
  ila = next;
 }
}
