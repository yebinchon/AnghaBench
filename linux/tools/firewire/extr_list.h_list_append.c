
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list {int dummy; } ;


 int list_insert (struct list*,struct list*) ;

__attribute__((used)) static inline void
list_append(struct list *list, struct list *new_link)
{
 list_insert((struct list *)list, new_link);
}
