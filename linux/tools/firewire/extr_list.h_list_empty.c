
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list {struct list* next; } ;



__attribute__((used)) static inline int
list_empty(struct list *list)
{
 return list->next == list;
}
