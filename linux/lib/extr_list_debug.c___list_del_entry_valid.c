
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {struct list_head* prev; struct list_head* next; } ;


 scalar_t__ CHECK_DATA_CORRUPTION (int,char*,struct list_head*,struct list_head*) ;
 struct list_head* LIST_POISON1 ;
 struct list_head* LIST_POISON2 ;

bool __list_del_entry_valid(struct list_head *entry)
{
 struct list_head *prev, *next;

 prev = entry->prev;
 next = entry->next;

 if (CHECK_DATA_CORRUPTION(next == LIST_POISON1,
   "list_del corruption, %px->next is LIST_POISON1 (%px)\n",
   entry, LIST_POISON1) ||
     CHECK_DATA_CORRUPTION(prev == LIST_POISON2,
   "list_del corruption, %px->prev is LIST_POISON2 (%px)\n",
   entry, LIST_POISON2) ||
     CHECK_DATA_CORRUPTION(prev->next != entry,
   "list_del corruption. prev->next should be %px, but was %px\n",
   entry, prev->next) ||
     CHECK_DATA_CORRUPTION(next->prev != entry,
   "list_del corruption. next->prev should be %px, but was %px\n",
   entry, next->prev))
  return 0;

 return 1;

}
