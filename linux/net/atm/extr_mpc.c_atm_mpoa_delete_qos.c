
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atm_mpoa_qos {struct atm_mpoa_qos* next; } ;


 int kfree (struct atm_mpoa_qos*) ;
 struct atm_mpoa_qos* qos_head ;

int atm_mpoa_delete_qos(struct atm_mpoa_qos *entry)
{
 struct atm_mpoa_qos *curr;

 if (entry == ((void*)0))
  return 0;
 if (entry == qos_head) {
  qos_head = qos_head->next;
  kfree(entry);
  return 1;
 }

 curr = qos_head;
 while (curr != ((void*)0)) {
  if (curr->next == entry) {
   curr->next = entry->next;
   kfree(entry);
   return 1;
  }
  curr = curr->next;
 }

 return 0;
}
