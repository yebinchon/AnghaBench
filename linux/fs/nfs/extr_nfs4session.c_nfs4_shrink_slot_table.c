
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct nfs4_slot_table {scalar_t__ max_slots; struct nfs4_slot* slots; } ;
struct nfs4_slot {struct nfs4_slot* next; } ;


 int kfree (struct nfs4_slot*) ;

__attribute__((used)) static void nfs4_shrink_slot_table(struct nfs4_slot_table *tbl, u32 newsize)
{
 struct nfs4_slot **p;
 if (newsize >= tbl->max_slots)
  return;

 p = &tbl->slots;
 while (newsize--)
  p = &(*p)->next;
 while (*p) {
  struct nfs4_slot *slot = *p;

  *p = slot->next;
  kfree(slot);
  tbl->max_slots--;
 }
}
