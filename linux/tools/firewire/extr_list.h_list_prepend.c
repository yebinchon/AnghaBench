
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list {int next; } ;


 int list_insert (int ,struct list*) ;

__attribute__((used)) static inline void
list_prepend(struct list *list, struct list *new_link)
{
 list_insert(list->next, new_link);
}
