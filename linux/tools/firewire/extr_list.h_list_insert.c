
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list {struct list* prev; struct list* next; } ;



__attribute__((used)) static inline void
list_insert(struct list *link, struct list *new_link)
{
 new_link->prev = link->prev;
 new_link->next = link;
 new_link->prev->next = new_link;
 new_link->next->prev = new_link;
}
